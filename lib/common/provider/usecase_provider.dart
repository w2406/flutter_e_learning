import 'package:flutter_e_learning/common/provider/repository_provider.dart';
import 'package:flutter_e_learning/usecase/question/get_questions_usecase.dart';
import 'package:flutter_e_learning/usecase/question/get_sections_usecase.dart';
import 'package:flutter_e_learning/usecase/question/update_questions_usecase.dart';
import 'package:flutter_e_learning/usecase/setting/get_api_key_usecase.dart';
import 'package:flutter_e_learning/usecase/setting/get_app_version_usecase.dart';
import 'package:flutter_e_learning/usecase/setting/update_api_key_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../../generated/common/provider/usecase_provider.g.dart';

@Riverpod(keepAlive: true)
GetApiKeyUsecase getApiKeyUsecase(Ref ref) {
  final repository = ref.watch(apiKeyRepositoryProvider);
  return GetApiKeyUsecase(repository);
}

@Riverpod(keepAlive: true)
UpdateApiKeyUsecase updateApiKeyUsecase(Ref ref) {
  final repository = ref.watch(apiKeyRepositoryProvider);
  return UpdateApiKeyUsecase(repository);
}

@Riverpod(keepAlive: true)
UpdateQuestionsUsecase updateQuestionsUsecase(Ref ref) {
  final repository = ref.watch(questionsRepositoryProvider);
  return UpdateQuestionsUsecase(repository);
}

@Riverpod(keepAlive: true)
GetAppVersionUsecase getAppVersionUsecase(Ref ref) {
  final repository = ref.watch(appVersionRepositoryProvider);
  return GetAppVersionUsecase(repository);
}

@Riverpod(keepAlive: true)
GetSectionsUseCase getSectionsUseCase(Ref ref) {
  final repository = ref.watch(sectionRepositoryProvider);
  return GetSectionsUseCase(repository);
}

@Riverpod(keepAlive: true)
GetQuestionsUseCase getQuestionsUseCase(Ref ref) {
  final repository = ref.watch(questionsRepositoryProvider);
  return GetQuestionsUseCase(repository);
}
