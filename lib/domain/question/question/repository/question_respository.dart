import 'package:flutter_e_learning/domain/question/question/entity/question.dart';
import 'package:flutter_e_learning/domain/question/question/value_object/id.dart';
import 'package:flutter_e_learning/domain/question/section/value_object/section.dart';

abstract interface class QuestionRepository {
  Future<void> saveQuestions(List<Question> questions);
  Future<Question> getQuestion(Id id);
  Future<List<Question>> getQuestions(Section section);
}
