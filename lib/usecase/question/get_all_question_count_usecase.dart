import 'package:flutter_e_learning/domain/question/question/repository/question_respository.dart';

class GetAllQuestionCountUseCase {
  final QuestionRepository repository;
  GetAllQuestionCountUseCase(this.repository);

  Future<int> execute() async {
    return await repository.getAllQuestionCount();
  }
}
