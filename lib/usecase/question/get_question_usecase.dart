import 'package:flutter_e_learning/domain/question/question/entity/question.dart';
import 'package:flutter_e_learning/domain/question/question/repository/question_respository.dart';
import 'package:flutter_e_learning/domain/question/question/value_object/id.dart';

class GetQuestionUseCase {
  final QuestionRepository questionRepository;

  GetQuestionUseCase(this.questionRepository);

  Future<Question> execute(String id) async {
    final question = await questionRepository.getQuestion(Id(value: id));
    return question;
  }
}
