import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/presantation/history/view_model/history_screen_state.freezed.dart';

@freezed
abstract class HistoryScreenState with _$HistoryScreenState {
  const factory HistoryScreenState({
    required String questionTitle,
    required String description,
    required String task,
    required String answerCode,
    required String answerChoice,
    required String feedbackResult,
    required String feedbackAdvice,
    required String feedbackRecommendation,
    required String modelCode,
  }) = _HistoryScreenState;
}
