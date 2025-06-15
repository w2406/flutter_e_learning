import 'package:flutter_e_learning/common/provider/usecase_provider.dart';
import 'package:flutter_e_learning/domain/history/history/value_object/answer.dart';
import 'package:flutter_e_learning/domain/question/question/entity/question.dart';
import 'package:flutter_e_learning/presantation/history/view_model/history_screen_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../../../generated/presantation/history/view_model/history_screen_view_model.g.dart';

@riverpod
class HistoryScreenViewModel extends _$HistoryScreenViewModel {
  @override
  Future<HistoryScreenState> build(String id) async {
    final getHistoryUseCase = ref.read(getHistoryUseCaseProvider);
    final history = await getHistoryUseCase.execute(id);
    final question = await ref
        .read(getQuestionUseCaseProvider)
        .execute(history.questionId);
    String? answerCode;
    int? answerChoiceIndex;
    final answer = history.answer;
    final choices = <({int id, String label, bool isCorrect})>[];
    switch (answer) {
      case CodeAnswer():
        answerCode = answer.code;
        break;
      case ChoiceAnswer():
        answerChoiceIndex = int.parse(answer.choice.id!);
        choices.addAll(
          question is ChoiceQuestion
              ? question.choices.values
                    .map(
                      (c) => (
                        id: int.parse(c.id!),
                        label: c.label,
                        isCorrect: c.isCorrect,
                      ),
                    )
                    .toList()
              : [],
        );
        break;
    }
    return HistoryScreenState(
      historyTitle: history.historyTitle,
      historyContent: history.historyContent,
      answerCode: answerCode,
      answerChoiceIndex: answerChoiceIndex ?? -1,
      feedbackResult: history.isCorrect ? '正解' : '不正解',
      feedbackExplanation: history.feedback.explanation,
      feedbackAdvice: history.feedback.advice ?? '',
      feedbackSampleCode: history.feedback.sampleCode ?? '',
      choices: choices,
    );
  }
}
