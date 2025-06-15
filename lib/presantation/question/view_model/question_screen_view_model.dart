import 'package:flutter_e_learning/common/provider/usecase_provider.dart';
import 'package:flutter_e_learning/domain/history/history/entity/history.dart';
import 'package:flutter_e_learning/domain/history/history/value_object/answer.dart';
import 'package:flutter_e_learning/domain/history/history/value_object/feedback.dart';
import 'package:flutter_e_learning/domain/question/question/entity/choice.dart';
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
      selectedChoiceIndex: null,
      choices: question is ChoiceQuestion
          ? question.choices.values
                .map((c) => (id: c.id!, label: c.label, isCorrect: c.isCorrect))
                .toList()
          : null,
      isAnswered: false,
      feedbackResult: '',
      feedbackExplanation: '',
      feedbackAdvice: '',
      modelCode: '',
    );
  }

  Future<void> updateFeedback() async {
    final choices = state.value?.choices;
    final selectedChoiceIndex = state.value?.selectedChoiceIndex;
    if (choices == null || selectedChoiceIndex == null) {
      // 選択肢がない場合はフィードバックを更新しない
      return;
    }
    final feedbackResult = choices[selectedChoiceIndex].isCorrect
        ? "<correctFeedbackResult>"
        : "<incorrectFeedbackResult>";
    final feedbackExplanation = "<feedbackExplanation>";
    final feedbackAdvice = "<feedbackAdvice>";
    final modelCode = "<modelCode>";
    state = AsyncValue.data(
      state.value!.copyWith(
        feedbackResult: feedbackResult,
        feedbackExplanation: feedbackExplanation,
        feedbackAdvice: feedbackAdvice,
        modelCode: modelCode,
      ),
    );
  }

  void updateSelectedChoiceIndex(int? index) {
    state = AsyncValue.data(state.value!.copyWith(selectedChoiceIndex: index));
  }

  void updateCodeAnswer(String code) {
    state = AsyncValue.data(state.value!.copyWith(codeAnswer: code));
  }

  Future<void> saveHistory() async {
    final s = state.value;
    if (s == null) return;
    // Answer生成
    final answer = s.choices != null && s.selectedChoiceIndex != null
        ? ChoiceAnswer(
            choice: Choice(
              id: s.choices![s.selectedChoiceIndex!].id,
              label: s.choices![s.selectedChoiceIndex!].label,
              isCorrect: s.choices![s.selectedChoiceIndex!].isCorrect,
            ),
          )
        : CodeAnswer(code: s.codeAnswer);
    // Feedback生成
    final feedback = Feedback(
      explanation: s.feedbackResult,
      advice: s.feedbackAdvice,
      sampleCode: s.modelCode,
    );
    final history = History(
      id: null,
      questionId: id,
      historyTitle: s.title,
      historyContent: s.questionText,
      answer: answer,
      isCorrect: s.choices != null && s.selectedChoiceIndex != null
          ? s.choices![s.selectedChoiceIndex!].isCorrect
          : false, // コード回答時は適宜判定
      feedback: feedback,
      answeredAt: DateTime.now(),
    );
    await ref.read(addHistoryUseCaseProvider).execute(history);
  }
}
