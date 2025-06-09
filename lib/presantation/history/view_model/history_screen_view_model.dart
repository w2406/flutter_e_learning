import 'package:flutter_e_learning/presantation/history/view_model/history_screen_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../../../generated/presantation/history/view_model/history_screen_view_model.g.dart';

@riverpod
class HistoryScreenViewModel extends _$HistoryScreenViewModel {
  @override
  HistoryScreenState build() {
    // 仮の履歴データ
    return const HistoryScreenState(
      questionTitle: 'サンプル問題',
      description: 'この問題はサンプルです。',
      task: '以下のコードを修正してください。',
      answerCode: 'print("Hello, World!")',
      answerChoice: 'A. print("Hello, World!")\nB. print("Hello, Flutter!")',
      feedbackResult: '正解です！',
      feedbackAdvice: 'コードは正しく動作します。',
      feedbackRecommendation: '次の問題に進んでください。',
      modelCode: 'model_code_sample',
    );
  }
}
