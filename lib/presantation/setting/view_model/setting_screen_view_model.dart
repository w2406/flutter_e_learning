import 'dart:convert';

import 'package:file_picker/file_picker.dart';
import 'package:flutter_e_learning/common/provider/usecase_provider.dart';
import 'package:flutter_e_learning/domain/question/question/entity/question.dart';
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
      isFileLoaded: false,
      fileName: null,
    );
  }

  Future<void> updateApiKey(String apiKey) async {
    await ref.read(updateApiKeyUsecaseProvider).execute(ApiKey(value: apiKey));
    state = AsyncValue.data(state.value!.copyWith(apiKey: apiKey));
  }

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
          if (jsonData is! List) {
            throw Exception('JSONファイルは配列形式である必要があります');
          }
          final questions = (jsonData)
              .map((e) => Question.fromJson(e as Map<String, dynamic>))
              .toList();
          await ref.read(updateQuestionsUsecaseProvider).execute(questions);
          state = AsyncValue.data(
            state.value!.copyWith(isFileLoaded: true, fileName: file.name),
          );
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
