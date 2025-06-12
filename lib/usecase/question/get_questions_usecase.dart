import 'package:flutter_e_learning/domain/question/question/entity/question.dart';
import 'package:flutter_e_learning/domain/question/question/repository/question_respository.dart';

class GetQuestionsUseCase {
  final QuestionRepository questionRepository;

  GetQuestionsUseCase(this.questionRepository);

  Future<List<Question>> execute() async {
    return await questionRepository.getQuestions();
  }
}
