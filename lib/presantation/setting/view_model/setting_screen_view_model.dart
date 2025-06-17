import 'dart:convert';

import 'package:file_picker/file_picker.dart';
import 'package:flutter_e_learning/common/provider/usecase_provider.dart';
import 'package:flutter_e_learning/domain/question/question/entity/question.dart';
import 'package:flutter_e_learning/domain/question/section/value_object/section.dart';
import 'package:flutter_e_learning/domain/setting/api_key/value_object/api_key.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'setting_screen_state.dart';

part '../../../generated/presantation/setting/view_model/setting_screen_view_model.g.dart';

@riverpod
class SettingScreenViewModel extends _$SettingScreenViewModel {
  @override
  Future<SettingScreenState> build() async {
    final apiKey = await ref.watch(getApiKeyUsecaseProvider).execute();
    final appVersion = await ref.watch(getAppVersionUsecaseProvider).execute();
    return SettingScreenState(
      apiKey: apiKey?.value,
      appVersion: appVersion.value,
      fileName: null,
    );
  }

  Future<void> updateApiKey(String apiKey) async {
    await ref.read(updateApiKeyUsecaseProvider).execute(ApiKey(value: apiKey));
    state = AsyncValue.data(state.value!.copyWith(apiKey: apiKey));
  }

  // TODO: ロード処理は別のUseCaseに切り出す
  Future<void> loadQuestionFile() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['json'],
      withData: true,
    );
    if (result != null && result.files.isNotEmpty) {
      final file = result.files.first;
      if (file.bytes != null) {
        try {
          final content = utf8.decode(file.bytes!);
          final jsonData = json.decode(content);
          // question_sample.json形式（sections+questions）対応
          if (jsonData is Map<String, dynamic> &&
              jsonData.containsKey('questions') &&
              jsonData.containsKey('sections')) {
            final sectionList = (jsonData['sections'] as List)
                .map((e) => Section.fromJson(e as Map<String, dynamic>))
                .toList();
            final questions = (jsonData['questions'] as List).map((e) {
              final qMap = e as Map<String, dynamic>;
              final section = sectionList.firstWhere(
                (s) => s.id == qMap['sectionId'],
                orElse: () => throw Exception('Section not found for question'),
              );
              if (qMap.containsKey('choices')) {
                return ChoiceQuestion.fromJson({
                  ...qMap,
                  'section': section.toJson(),
                });
              } else {
                return CodeQuestion.fromJson({
                  ...qMap,
                  'section': section.toJson(),
                });
              }
            }).toList();
            await ref.read(updateSectionsUsecaseProvider).execute(sectionList);
            await ref.read(updateQuestionsUsecaseProvider).execute(questions);
          } else {
            throw Exception(
              'question_sample.json形式（sections+questions）である必要があります',
            );
          }
        } catch (exception, stackTrace) {
          state = AsyncValue.error(exception, stackTrace);
        }
      }
    }
  }

  Future<String> getAppVersion() async {
    final info = await PackageInfo.fromPlatform();
    return info.version;
  }
}
