import 'package:flutter_e_learning/common/provider/usecase_provider.dart';
import 'package:flutter_e_learning/domain/question/question/entity/question.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'question_screen_state.dart';

part '../../../generated/presantation/question/view_model/question_screen_view_model.g.dart';

@riverpod
class QuestionScreenViewModel extends _$QuestionScreenViewModel {
  @override
  Future<QuestionScreenState> build(String id) async {
    final question = await ref.read(getQuestionUseCaseProvider).execute(id);
    return QuestionScreenState(
      title: question.title,
      questionText: question.questionText,
      codeAnswer: '',
      selectedChoice: 0,
      choices: question is ChoiceQuestion
          ? question.choices.values.map((c) => c.label).toList()
          : null,
      isAnswered: false,
      feedbackResult: '',
      feedbackAdvice: '',
      feedbackRecommendation: '',
      modelCode: '',
    );
  }
}
