import 'package:flutter_e_learning/domain/history/history/entity/history.dart';
import 'package:flutter_e_learning/domain/history/history/repository/history_repository.dart';
import 'package:flutter_e_learning/domain/history/history/value_object/answer.dart';
import 'package:flutter_e_learning/domain/history/history/value_object/feedback.dart';
import 'package:flutter_e_learning/infrastructure/data/local/app_database.dart';

class HistoryRepositoryImpl implements HistoryRepository {
  final AppDatabase _database;
  HistoryRepositoryImpl({required AppDatabase database}) : _database = database;

  @override
  Future<List<History>> getHistories() async {
    final db = await _database.database;
    final historyMaps = await db.query(
      'histories',
      orderBy: 'answered_at DESC',
    );
    return historyMaps
        .map(
          (h) => History(
            id: h['id'] as String,
            historyTitle: h['historyTitle'] as String? ?? '',
            historyContent: h['historyContent'] as String? ?? '',
            answer: Answer.code(
              code: h['answer'] as String? ?? '',
            ), // 必要に応じて型判定
            isCorrect: (h['is_correct'] as int?) == 1,
            feedback: Feedback(
              explanation: h['feedback'] as String? ?? '',
              advice: '', // 必要に応じてカラム追加
              sampleCode: '', // 必要に応じてカラム追加
            ),
            answeredAt:
                DateTime.tryParse(h['answered_at'] as String? ?? '') ??
                DateTime.now(),
          ),
        )
        .toList();
  }

  @override
  Future<History> getHistoryById(String id) async {
    final db = await _database.database;
    final maps = await db.query('histories', where: 'id = ?', whereArgs: [id]);
    if (maps.isEmpty) throw Exception('History not found');
    final h = maps.first;
    return History(
      id: h['id'] as String,
      historyTitle: h['historyTitle'] as String? ?? '',
      historyContent: h['historyContent'] as String? ?? '',
      answer: Answer.code(code: h['answer'] as String? ?? ''),
      isCorrect: (h['is_correct'] as int?) == 1,
      feedback: Feedback(
        explanation: h['feedback'] as String? ?? '',
        advice: '',
        sampleCode: '',
      ),
      answeredAt:
          DateTime.tryParse(h['answered_at'] as String? ?? '') ??
          DateTime.now(),
    );
  }

  @override
  Future<void> addHistory(History history) async {
    final db = await _database.database;
    await db.insert('histories', {
      'id': history.id,
      'historyTitle': history.historyTitle,
      'historyContent': history.historyContent,
      'answer': history.answer.toString(), // 必要に応じて型判定
      'is_correct': history.isCorrect ? 1 : 0,
      'feedback': history.feedback.explanation,
      'answered_at': history.answeredAt.toIso8601String(),
      // advice, sampleCode など必要に応じてカラム追加
    });
  }
}
