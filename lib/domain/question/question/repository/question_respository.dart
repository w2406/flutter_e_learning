import 'package:flutter_e_learning/domain/question/question/entity/question.dart';

abstract interface class QuestionRepository {
  Future<void> saveQuestions(List<Question> questions);
  Future<Question> getQuestion();
}
