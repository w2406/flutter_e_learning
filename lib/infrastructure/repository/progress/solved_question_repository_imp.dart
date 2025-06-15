import 'package:flutter_e_learning/domain/progress/solved_question/entity/solved_question.dart';
import 'package:flutter_e_learning/domain/progress/solved_question/reository/solved_question_repository.dart';
import 'package:flutter_e_learning/infrastructure/data/local/app_database.dart';

class SolvedQuestionRepositoryImpl implements SolvedQuestionRepository {
  final AppDatabase _db = AppDatabase.instance;

  @override
  Future<void> update(SolvedQuestion solvedQuestion) async {
    await _db.insert('solved_questions', {
      'question_id': solvedQuestion.questionId,
      'solved_at': solvedQuestion.solvedAt.toIso8601String(),
      'isCorrect': solvedQuestion.isCorrect ? 1 : 0,
    });
  }

  @override
  Future<int> getAllCount() async {
    final list = await _db.query('solved_questions')
      ..length;
    return list.length;
  }

  @override
  Future<SolvedQuestion?> getByQuestionId(String questionId) async {
    final result = await _db.query(
      'solved_questions',
      where: 'question_id = ?',
      whereArgs: [questionId],
    );
    if (result.isEmpty) return null;
    final e = result.first;
    return SolvedQuestion(
      questionId: e['question_id'] as String,
      solvedAt: DateTime.parse(e['solved_at'] as String),
      isCorrect: (e['isCorrect'] ?? 0) == 1,
    );
  }

  @override
  Future<void> deleteAll() async {
    await _db.deleteAll('solved_questions');
  }
}
