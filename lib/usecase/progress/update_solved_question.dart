import 'package:flutter_e_learning/domain/progress/solved_question/entity/solved_question.dart';
import 'package:flutter_e_learning/domain/progress/solved_question/reository/solved_question_repository.dart';

class UpdateSolvedQuestionUseCase {
  final SolvedQuestionRepository repository;
  UpdateSolvedQuestionUseCase(this.repository);

  Future<void> execute(SolvedQuestion solvedQuestion) async {
    await repository.update(solvedQuestion);
  }
}
