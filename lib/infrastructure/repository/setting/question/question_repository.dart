import 'package:flutter_e_learning/domain/setting/question/entity/choices.dart';
import 'package:flutter_e_learning/domain/setting/question/entity/question.dart';
import 'package:flutter_e_learning/domain/setting/question/repository/question_respository.dart';
import 'package:flutter_e_learning/domain/setting/question/value_object/choice.dart';
import 'package:flutter_e_learning/domain/setting/question/value_object/id.dart';

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
}
