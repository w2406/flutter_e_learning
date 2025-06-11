import 'package:flutter_e_learning/domain/setting/question/entity/question.dart';
import 'package:flutter_e_learning/domain/setting/question/repository/question_respository.dart';

class UpdateQuestionsUsecase {
  final QuestionRepository repository;
  UpdateQuestionsUsecase(this.repository);

  Future<void> execute(List<Question> questions) async {
    await repository.saveQuestions(questions);
  }
}
