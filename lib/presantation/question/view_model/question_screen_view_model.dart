import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'question_screen_state.dart';

part '../../../generated/presantation/question/view_model/question_screen_view_model.g.dart';

@riverpod
class QuestionScreenViewModel extends _$QuestionScreenViewModel {
  @override
  QuestionScreenState build() {
    return QuestionScreenState(
      questionTitle: 'FlutterのState管理',
      description: 'Flutterで状態管理を行う方法について学びます。',
      task: '以下のカウンターアプリに状態管理を追加してください。',
      codeAnswer: '',
      selectedChoice: 0,
      choices: ['Provider', 'Riverpod', 'setState'],
      isAnswered: false,
      feedbackResult: '',
      feedbackAdvice: '',
      feedbackRecommendation: '',
      modelCode: '',
    );
  }
}
