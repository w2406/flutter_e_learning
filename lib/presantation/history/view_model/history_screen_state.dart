import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/presantation/history/view_model/history_screen_state.freezed.dart';

@freezed
abstract class HistoryScreenState with _$HistoryScreenState {
  const factory HistoryScreenState({
    required String historyTitle,
    required String historyContent,
    String? answerCode,
    String? answerChoice,
    required String feedbackResult,
    required String feedbackExplanation,
    required String feedbackAdvice,
    required String feedbackSampleCode,
  }) = _HistoryScreenState;
}
