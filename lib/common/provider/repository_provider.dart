import 'package:flutter_e_learning/domain/setting/api_key/repository/api_key_repository.dart';
import 'package:flutter_e_learning/domain/setting/app_version/repository/app_version_repository.dart';
import 'package:flutter_e_learning/domain/setting/question/repository/question_respository.dart';
import 'package:flutter_e_learning/infrastructure/repository/setting/api_key/api_key_repository.dart';
import 'package:flutter_e_learning/infrastructure/repository/setting/app_version/app_version_repository.dart';
import 'package:flutter_e_learning/infrastructure/repository/setting/question/question_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../../generated/common/provider/repository_provider.g.dart';

@Riverpod(keepAlive: true)
ApiKeyRepository apiKeyRepository(Ref ref) {
  return ApiKeyRepositoryImpl();
}

@Riverpod(keepAlive: true)
QuestionRepository questionsRepository(Ref ref) {
  return QuestionRepositoryImpl();
}

@Riverpod(keepAlive: true)
AppVersionRepository appVersionRepository(Ref ref) {
  return AppVersionRepositoryImpl();
}
