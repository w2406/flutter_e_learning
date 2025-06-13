import 'package:flutter_e_learning/domain/question/question/entity/choices.dart';
import 'package:flutter_e_learning/domain/question/question/entity/question.dart';
import 'package:flutter_e_learning/domain/question/question/repository/question_respository.dart';
import 'package:flutter_e_learning/domain/question/question/value_object/choice.dart';
import 'package:flutter_e_learning/domain/question/question/value_object/id.dart';

class QuestionRepositoryImpl implements QuestionRepository {
  final List<Question> _questions = [
    Question.choice(
      id: Id(value: '1'),
      title: 'Flutterの概要',
      questionText: 'Flutterとは何か説明してください。',
      choices: Choices(
        values: [
          Choice(label: 'A framework', isCorrect: true),
          Choice(label: 'A language', isCorrect: false),
          Choice(label: 'An IDE', isCorrect: false),
          Choice(label: 'A database', isCorrect: false),
        ],
      ),
    ),
    Question.choice(
      id: Id(value: '2'),
      title: 'Dartの用途',
      questionText: 'Dartは何に使われる言語ですか？',
      choices: Choices(
        values: [
          Choice(label: 'Web development', isCorrect: false),
          Choice(label: 'Mobile development', isCorrect: true),
          Choice(label: 'Game development', isCorrect: false),
          Choice(label: 'Data analysis', isCorrect: false),
        ],
      ),
    ),
    Question.code(
      id: Id(value: '3'),
      title: 'Hello World出力',
      questionText: 'DartでHello Worldを出力するコードを書いてください。',
    ),
  ];

  @override
  Future<void> saveQuestions(List<Question> questions) async {
    _questions.clear();
    _questions.addAll(questions);
  }

  @override
  Future<Question> getQuestion(Id id) async {
    return _questions.firstWhere(
      (q) => q.id == id,
      orElse: () => throw Exception('Question not found'),
    );
  }

  @override
  Future<List<Question>> getQuestions() async {
    return List.unmodifiable(_questions);
  }
}
