import 'package:flutter_e_learning/domain/progress/solved_question/reository/solved_question_repository.dart';

class CheckSolvedQuestionUseCase {
  final SolvedQuestionRepository repository;
  CheckSolvedQuestionUseCase(this.repository);

  /// 指定したquestionIdが解答済みかどうかを判定する
  Future<bool?> execute(String questionId) async {
    final solved = await repository.getByQuestionId(questionId);
    return solved?.isCorrect;
  }
}
