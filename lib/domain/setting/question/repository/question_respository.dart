import 'package:flutter_e_learning/domain/setting/question/entity/question.dart';

abstract interface class QuestionRepository {
  Future<void> saveQuestions(List<Question> questions);
  Future<Question> getQuestion();
}
