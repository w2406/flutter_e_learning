import 'package:flutter_e_learning/domain/progress/solved_question/entity/solved_question.dart';

abstract interface class SolvedQuestionRepository {
  Future<void> update(SolvedQuestion solvedQuestion);
  Future<int> getAllCount();
  Future<SolvedQuestion?> getByQuestionId(String questionId);
  Future<void> deleteAll();
}
