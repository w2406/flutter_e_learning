import 'package:flutter_e_learning/domain/question/question/entity/choices.dart';
import 'package:flutter_e_learning/domain/question/question/entity/question.dart';
import 'package:flutter_e_learning/domain/question/question/repository/question_respository.dart';
import 'package:flutter_e_learning/domain/question/question/value_object/choice.dart';
import 'package:flutter_e_learning/domain/question/question/value_object/id.dart';

class QuestionRepositoryImpl implements QuestionRepository {
  @override
  Future<void> saveQuestions(List<Question> questions) async {
    // 保存の処理
  }

  @override
  Future<Question> getQuestion(Id id) async {
    // 仮のデータ例
    return Question.choice(
      id: id,
      title: 'Flutter Basics',
      questionText: 'Flutterとは何か説明してください。',
      choices: Choices(
        values: [
          Choice(label: 'A framework', isCorrect: true),
          Choice(label: 'A language', isCorrect: false),
          Choice(label: 'An IDE', isCorrect: false),
          Choice(label: 'A database', isCorrect: false),
        ],
      ),
    );
  }

  @override
  Future<List<Question>> getQuestions() {
    // 仮のデータ例
    return Future.value([
      Question.choice(
        id: Id(value: '1'),
        title: 'Flutter Basics',
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
        title: 'Dart Fundamentals',
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
      Question.choice(
        id: Id(value: '3'),
        title: 'State Management in Flutter',
        questionText: 'Flutterの状態管理の目的は何ですか？',
        choices: Choices(
          values: [
            Choice(label: 'UI更新を管理する', isCorrect: true),
            Choice(label: 'ネットワーク通信を行う', isCorrect: false),
            Choice(label: 'ローカルデータを保存する', isCorrect: false),
            Choice(label: 'アニメーションを作成する', isCorrect: false),
          ],
        ),
      ),
    ]);
  }
}
