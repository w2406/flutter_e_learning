import 'package:flutter_e_learning/common/provider/usecase_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'history_list_screen_state.dart';

part '../../../generated/presantation/history_list/view_model/history_list_screen_view_model.g.dart';

@riverpod
class HistoryListScreenViewModel extends _$HistoryListScreenViewModel {
  @override
  Future<HistoryListScreenState> build() async {
    final getHistoriesUseCase = ref.read(getHistoriesUseCaseProvider);
    final histories = await getHistoriesUseCase.execute();
    return HistoryListScreenState(
      items: histories
          .map(
            (history) => HistoryListItem(
              historyId: history.id,
              historyTitle: history.historyTitle, // 問題文を表示
              answeredAt: history.answeredAt.toString().split(' ').first,
              isCorrect: history.isCorrect,
              feedbackExplanation: history.feedback.explanation,
              feedbackAdvice: history.feedback.advice,
              feedbackSampleCode: history.feedback.sampleCode,
            ),
          )
          .toList(),
    );
  }
}
