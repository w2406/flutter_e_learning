import 'package:flutter_e_learning/domain/history/history/entity/history.dart';
import 'package:flutter_e_learning/domain/history/history/repository/history_repository.dart';
import 'package:flutter_e_learning/domain/history/history/value_object/answer.dart';
import 'package:flutter_e_learning/domain/history/history/value_object/feedback.dart';
import 'package:flutter_e_learning/domain/question/question/entity/choices.dart';
import 'package:flutter_e_learning/domain/question/question/value_object/choice.dart';

class HistoryRepositoryImpl implements HistoryRepository {
  final List<History> _dummyHistories = [
    History(
      id: '1',
      historyTitle: 'Dartの基本',
      historyContent: 'varとfinalの違いを説明してください。',
      answer: const Answer.code(code: 'var x = 1; final y = 2;'),
      isCorrect: true,
      feedback: const Feedback(
        explanation: 'よくできました',
        advice: 'もう少しコードを整理しましょう',
        sampleCode: 'var x = 1;\nfinal y = 2;',
      ),
      answeredAt: DateTime.now().subtract(const Duration(days: 1)),
    ),
    History(
      id: '2',
      historyTitle: 'if文の使い方',
      historyContent: 'xが0より大きいときにxを出力するコードを書いてください。',
      answer: const Answer.code(code: 'if (x > 0) { print(x); }'),
      isCorrect: false,
      feedback: const Feedback(
        explanation: '間違いがあります',
        advice: '条件分岐の使い方を復習しましょう',
        sampleCode: 'if (x > 0) { print(x); }',
      ),
      answeredAt: DateTime.now().subtract(const Duration(days: 2)),
    ),
    History(
      id: '3',
      historyTitle: '選択肢問題の例',
      historyContent: 'Dartで整数型を表すキーワードはどれですか？',
      answer: Answer.choice(
        selectedIndex: 1,
        choices: Choices(
          values: [
            Choice(label: 'String', isCorrect: false),
            Choice(label: 'int', isCorrect: true),
            Choice(label: 'double', isCorrect: false),
            Choice(label: 'bool', isCorrect: false),
          ],
        ),
      ),
      isCorrect: true,
      feedback: const Feedback(
        explanation: '正解です！',
        advice: '他の型についても確認しましょう',
        sampleCode: 'int number = 10;',
      ),
      answeredAt: DateTime.now().subtract(const Duration(days: 3)),
    ),
  ];

  @override
  Future<List<History>> getHistories() async {
    // 本来はDBやAPIから取得
    await Future.delayed(const Duration(milliseconds: 300));
    return _dummyHistories;
  }

  @override
  Future<History> getHistoryById(String id) async {
    await Future.delayed(const Duration(milliseconds: 100));
    return _dummyHistories.firstWhere((h) => h.id == id);
  }

  @override
  Future<void> addHistory(History history) async {
    // 本来はDBやAPIに保存
    _dummyHistories.add(history);
  }
}
