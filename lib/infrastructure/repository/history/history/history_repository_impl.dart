import 'package:flutter_e_learning/domain/history/history/entity/history.dart';
import 'package:flutter_e_learning/domain/history/history/repository/history_repository.dart';
import 'package:flutter_e_learning/domain/history/history/value_object/answer.dart';
import 'package:flutter_e_learning/domain/history/history/value_object/feedback.dart';
import 'package:flutter_e_learning/domain/question/question/entity/choice.dart';
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
    List<History> histories = [];
    for (final h in historyMaps) {
      // Feedbackを取得
      Feedback feedback = const Feedback(
        explanation: '',
        advice: '',
        sampleCode: '',
      );
      if (h['feedback_id'] != null) {
        final feedbackRows = await db.query(
          'feedbacks',
          where: 'id = ?',
          whereArgs: [h['feedback_id']],
        );
        if (feedbackRows.isNotEmpty) {
          final f = feedbackRows.first;
          feedback = Feedback(
            explanation: f['explanation'] as String? ?? '',
            advice: f['advice'] as String? ?? '',
            sampleCode: f['sample_code'] as String? ?? '',
          );
        }
      }
      // Answerを取得
      final answerMaps = await db.query(
        'answers',
        where: 'id = ?',
        whereArgs: [h['answer_id']],
      );
      final answerRow = answerMaps.first;
      Answer answer;
      if (answerRow["choice_id"] == null) {
        answer = Answer.code(code: answerRow["answer_code"] as String? ?? '');
      } else {
        final choiceMaps = await db.query(
          'choices',
          where: 'id = ?',
          whereArgs: [answerRow["choice_id"]],
        );
        final choice = choiceMaps.first;
        answer = Answer.choice(
          choice: Choice(
            id: choice['id'].toString(),
            label: choice['label'] as String? ?? '',
            isCorrect: (choice['is_correct'] as int?) == 1,
          ),
        );
      }
      histories.add(
        History(
          id: h['id'].toString(),
          questionId: h['question_id'] as String? ?? '',
          historyTitle: h['historyTitle'] as String? ?? '',
          historyContent: h['historyContent'] as String? ?? '',
          answer: answer,
          isCorrect: (h['is_correct'] as int?) == 1,
          feedback: feedback,
          answeredAt:
              DateTime.tryParse(h['answered_at'] as String? ?? '') ??
              DateTime.now(),
        ),
      );
    }
    return histories;
  }

  @override
  Future<History> getHistoryById(String id) async {
    final db = await _database.database;
    final maps = await db.query('histories', where: 'id = ?', whereArgs: [id]);
    if (maps.isEmpty) throw Exception('History not found');
    final h = maps.first;
    // Feedbackを取得
    Feedback feedback = const Feedback(
      explanation: '',
      advice: '',
      sampleCode: '',
    );
    if (h['feedback_id'] != null) {
      final feedbackRows = await db.query(
        'feedbacks',
        where: 'id = ?',
        whereArgs: [h['feedback_id']],
      );
      if (feedbackRows.isNotEmpty) {
        final f = feedbackRows.first;
        feedback = Feedback(
          explanation: f['explanation'] as String? ?? '',
          advice: f['advice'] as String? ?? '',
          sampleCode: f['sample_code'] as String? ?? '',
        );
      }
    }
    // Answerを取得
    final answerMaps = await db.query(
      'answers',
      where: 'id = ?',
      whereArgs: [h['answer_id']],
    );
    final answerRow = answerMaps.first;
    Answer answer;
    if (answerRow["choice_id"] == null) {
      answer = Answer.code(code: answerRow["answer_code"] as String? ?? '');
    } else {
      // Fetch the choice from the choices table and construct a Choice object
      final choiceMaps = await db.query(
        'choices',
        where: 'id = ?',
        whereArgs: [answerRow["choice_id"]],
      );
      final choice = choiceMaps.first;
      answer = Answer.choice(
        choice: Choice(
          id: choice['id'].toString(),
          label: choice['label'] as String? ?? '',
          isCorrect: (choice['is_correct'] as int?) == 1,
        ),
      );
    }
    return History(
      id: h['id'].toString(),
      questionId: h['question_id'] as String? ?? '',
      historyTitle: h['historyTitle'] as String? ?? '',
      historyContent: h['historyContent'] as String? ?? '',
      answer: answer,
      isCorrect: (h['is_correct'] as int?) == 1,
      feedback: feedback,
      answeredAt:
          DateTime.tryParse(h['answered_at'] as String? ?? '') ??
          DateTime.now(),
    );
  }

  @override
  Future<void> addHistory(History history) async {
    final db = await _database.database;

    // answerをanswersテーブルに挿入
    int? answerRowId;
    switch (history.answer) {
      case CodeAnswer(:final code):
        answerRowId = await db.insert('answers', {
          'answer_code': code,
          'choice_id': null,
        });
        break;
      case ChoiceAnswer(:final choice):
        answerRowId = await db.insert('answers', {
          'answer_code': null,
          'choice_id': choice.id,
        });
        break;
    }

    // feedbackをfeedbacksテーブルに挿入
    final feedbackId = await db.insert('feedbacks', {
      'explanation': history.feedback.explanation,
      'advice': history.feedback.advice,
      'sample_code': history.feedback.sampleCode,
    });

    await db.insert('histories', {
      // idは自動採番
      'question_id': history.questionId,
      'answer_id': answerRowId,
      'is_correct': history.isCorrect ? 1 : 0,
      'feedback_id': feedbackId,
      'historyTitle': history.historyTitle,
      'historyContent': history.historyContent,
      'answered_at': history.answeredAt.toIso8601String(),
    });
  }
}
