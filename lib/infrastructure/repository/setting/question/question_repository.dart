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
  Future<Question> getQuestion() async {
    // 仮のデータ例
    return Question(
      id: Id(value: '1'),
      title: 'Flutter Basics',
      description: 'A question about the Flutter framework.',
      task: 'Explain what Flutter is.',
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
      Question(
        id: Id(value: '1'),
        title: 'Flutter Basics',
        description: 'A question about the Flutter framework.',
        task: 'Explain what Flutter is.',
        choices: Choices(
          values: [
            Choice(label: 'A framework', isCorrect: true),
            Choice(label: 'A language', isCorrect: false),
            Choice(label: 'An IDE', isCorrect: false),
            Choice(label: 'A database', isCorrect: false),
          ],
        ),
      ),
      Question(
        id: Id(value: '2'),
        title: 'Dart Fundamentals',
        description: 'A question about the Dart programming language.',
        task: 'What is Dart used for?',
        choices: Choices(
          values: [
            Choice(label: 'Web development', isCorrect: false),
            Choice(label: 'Mobile development', isCorrect: true),
            Choice(label: 'Game development', isCorrect: false),
            Choice(label: 'Data analysis', isCorrect: false),
          ],
        ),
      ),
      Question(
        id: Id(value: '3'),
        title: 'State Management in Flutter',
        description: 'A question about state management techniques in Flutter.',
        task: 'What is the purpose of state management in Flutter?',
        choices: Choices(
          values: [
            Choice(label: 'To manage UI updates', isCorrect: true),
            Choice(label: 'To handle network requests', isCorrect: false),
            Choice(label: 'To store data locally', isCorrect: false),
            Choice(label: 'To create animations', isCorrect: false),
          ],
        ),
      ),
    ]);
  }
}
