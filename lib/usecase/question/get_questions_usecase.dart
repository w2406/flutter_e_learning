import 'package:flutter_e_learning/domain/question/question/entity/question.dart';
import 'package:flutter_e_learning/domain/question/question/repository/question_respository.dart';
import 'package:flutter_e_learning/domain/question/section/value_object/section.dart';

class GetQuestionsUseCase {
  final QuestionRepository questionRepository;

  GetQuestionsUseCase(this.questionRepository);

  Future<List<Question>> execute(Section section) async {
    return await questionRepository.getQuestions(section);
  }
}
