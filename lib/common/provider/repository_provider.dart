import 'package:flutter_e_learning/common/provider/common_provider.dart';
import 'package:flutter_e_learning/domain/history/history/repository/history_repository.dart';
import 'package:flutter_e_learning/domain/progress/solved_question/reository/solved_question_repository.dart';
import 'package:flutter_e_learning/domain/question/question/repository/question_respository.dart';
import 'package:flutter_e_learning/domain/question/section/repository/section_repository.dart';
import 'package:flutter_e_learning/domain/setting/api_key/repository/api_key_repository.dart';
import 'package:flutter_e_learning/domain/setting/app_version/repository/app_version_repository.dart';
import 'package:flutter_e_learning/infrastructure/repository/history/history/history_repository_impl.dart';
import 'package:flutter_e_learning/infrastructure/repository/progress/solved_question_repository_imp.dart';
import 'package:flutter_e_learning/infrastructure/repository/question/question/question_repository_impl.dart';
import 'package:flutter_e_learning/infrastructure/repository/question/section/section_repository_impl.dart';
import 'package:flutter_e_learning/infrastructure/repository/setting/api_key/api_key_repository.dart';
import 'package:flutter_e_learning/infrastructure/repository/setting/app_version/app_version_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../../generated/common/provider/repository_provider.g.dart';

@Riverpod(keepAlive: true)
ApiKeyRepository apiKeyRepository(Ref ref) {
  return ApiKeyRepositoryImpl();
}

@Riverpod(keepAlive: true)
QuestionRepository questionsRepository(Ref ref) {
  final database = ref.watch(databaseProvider);
  return QuestionRepositoryImpl(database: database);
}

@Riverpod(keepAlive: true)
AppVersionRepository appVersionRepository(Ref ref) {
  return AppVersionRepositoryImpl();
}

@Riverpod(keepAlive: true)
SectionRepository sectionRepository(Ref ref) {
  final database = ref.watch(databaseProvider);
  return SectionRepositoryImpl(database: database);
}

@Riverpod(keepAlive: true)
HistoryRepository historyRepository(Ref ref) {
  final database = ref.watch(databaseProvider);
  return HistoryRepositoryImpl(database: database);
}

@Riverpod(keepAlive: true)
SolvedQuestionRepository solvedQuestionRepository(Ref ref) {
  return SolvedQuestionRepositoryImpl();
}

@Riverpod(keepAlive: true)
ApiKeyRepositoryImpl apiKeyRepositoryImpl(Ref ref) {
  return ApiKeyRepositoryImpl();
}
