import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/presantation/history_list/view_model/history_list_screen_state.freezed.dart';

@freezed
abstract class HistoryListScreenState with _$HistoryListScreenState {
  const factory HistoryListScreenState({required List<HistoryListItem> items}) =
      _HistoryListScreenState;
}

@freezed
abstract class HistoryListItem with _$HistoryListItem {
  const factory HistoryListItem({
    required String? historyId,
    required String historyTitle,
    required String answeredAt,
    required bool isCorrect, // 正解ならtrue, 不正解ならfalse
    String? feedbackExplanation,
    String? feedbackAdvice,
    String? feedbackSampleCode,
  }) = _HistoryListItem;
}
