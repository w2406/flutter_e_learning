import 'package:flutter_e_learning/domain/progress/solved_question/reository/solved_question_repository.dart';

class GetSolvedQuestionCountUseCase {
  final SolvedQuestionRepository repository;
  GetSolvedQuestionCountUseCase(this.repository);

  Future<int> execute() async {
    return await repository.getAllCount();
  }
}
