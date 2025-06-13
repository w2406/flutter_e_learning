import 'package:flutter_e_learning/domain/question/question/entity/question.dart';
import 'package:flutter_e_learning/domain/question/question/value_object/id.dart';

abstract interface class QuestionRepository {
  Future<void> saveQuestions(List<Question> questions);
  Future<Question> getQuestion(Id id);
  Future<List<Question>> getQuestions();
}
