import 'package:flutter_e_learning/domain/question/question/entity/choice.dart';
import 'package:flutter_e_learning/domain/question/question/entity/choices.dart';
import 'package:flutter_e_learning/domain/question/question/entity/question.dart';
import 'package:flutter_e_learning/domain/question/question/repository/question_respository.dart';
import 'package:flutter_e_learning/domain/question/question/value_object/id.dart';
import 'package:flutter_e_learning/domain/question/section/value_object/section.dart';
import 'package:flutter_e_learning/infrastructure/data/local/app_database.dart';

class QuestionRepositoryImpl implements QuestionRepository {
  final AppDatabase _database;
  QuestionRepositoryImpl({required AppDatabase database})
    : _database = database;

  @override
  Future<void> saveQuestions(List<Question> questions) async {
    // 共通CRUDメソッドを利用
    await _database.deleteAll('questions');
    await _database.deleteAll('choices');
    await _database.deleteAll('histories');
    await _database.deleteAll('solved_questions');
    for (final q in questions) {
      await _database.insert('questions', {
        'id': q.id.value,
        'title': q.title,
        'question_text': q.questionText,
        'section_id': q.section.id,
        'type': q is ChoiceQuestion ? 'choice' : 'code',
      });
      if (q is ChoiceQuestion) {
        for (final c in q.choices.values) {
          await _database.insert('choices', {
            'question_id': q.id.value,
            'label': c.label,
            'is_correct': c.isCorrect ? 1 : 0,
          });
        }
      }
    }
  }

  @override
  Future<Question> getQuestion(Id id) async {
    final questionMaps = await _database.query(
      'questions',
      where: 'id = ?',
      whereArgs: [id.value],
    );
    if (questionMaps.isEmpty) {
      throw Exception('Question not found');
    }
    final qMap = questionMaps.first;
    // セクション情報を取得
    final sectionMaps = await _database.query(
      'sections',
      where: 'id = ?',
      whereArgs: [qMap['section_id']],
    );
    if (sectionMaps.isEmpty) {
      throw Exception('Section not found for question: \\${qMap['id']}');
    }
    final section = Section(
      id: sectionMaps.first['id'].toString(),
      title: sectionMaps.first['title'] as String,
      description: sectionMaps.first['description'] as String?,
    );
    if (qMap['type'] == 'choice') {
      final choiceMaps = await _database.query(
        'choices',
        where: 'question_id = ?',
        whereArgs: [id.value],
      );
      final choices = Choices(
        values: choiceMaps
            .map(
              (c) => Choice(
                id: c['id'].toString(),
                label: c['label'] as String,
                isCorrect: (c['is_correct'] as int) == 1,
              ),
            )
            .toList(),
      );
      return Question.choice(
        id: Id(value: qMap['id'].toString()),
        title: qMap['title'] as String,
        questionText: qMap['question_text'] as String,
        section: section,
        choices: choices,
      );
    } else {
      return Question.code(
        id: Id(value: qMap['id'].toString()),
        title: qMap['title'] as String,
        questionText: qMap['question_text'] as String,
        section: section,
      );
    }
  }

  @override
  Future<List<Question>> getQuestions(Section section) async {
    final questionMaps = await _database.query(
      'questions',
      where: 'section_id = ?',
      whereArgs: [section.id],
    );
    List<Question> questions = [];
    for (final qMap in questionMaps) {
      // セクション情報は引数から取得
      if (qMap['type'] == 'choice') {
        final choiceMaps = await _database.query(
          'choices',
          where: 'question_id = ?',
          whereArgs: [qMap['id']],
        );
        final choices = Choices(
          values: choiceMaps
              .map(
                (c) => Choice(
                  id: c['id'].toString(),
                  label: c['label'] as String,
                  isCorrect: (c['is_correct'] as int) == 1,
                ),
              )
              .toList(),
        );
        questions.add(
          Question.choice(
            id: Id(value: qMap['id'].toString()),
            title: qMap['title'] as String,
            questionText: qMap['question_text'] as String,
            section: section,
            choices: choices,
          ),
        );
      } else {
        questions.add(
          Question.code(
            id: Id(value: qMap['id'].toString()),
            title: qMap['title'] as String,
            questionText: qMap['question_text'] as String,
            section: section,
          ),
        );
      }
    }
    return questions;
  }

  @override
  Future<int> getAllQuestionCount() async {
    final questionMaps = await _database.query('questions');
    return questionMaps.length;
  }
}
