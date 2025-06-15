import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/presantation/history/view_model/history_screen_state.freezed.dart';

@freezed
abstract class HistoryScreenState with _$HistoryScreenState {
  const factory HistoryScreenState({
    required String historyTitle,
    required String historyContent,
    String? answerCode,
    int? answerChoiceIndex,
    required String feedbackResult,
    required String feedbackExplanation,
    required String feedbackAdvice,
    required String feedbackSampleCode,
    @Default([]) List<({int id, String label, bool isCorrect})> choices,
  }) = _HistoryScreenState;
}
