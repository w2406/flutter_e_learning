import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/presantation/question/view_model/question_screen_state.freezed.dart';

@freezed
abstract class QuestionScreenState with _$QuestionScreenState {
  const factory QuestionScreenState({
    required String title,
    required String questionText,
    required String codeAnswer,
    required int selectedChoice,
    required List<String>? choices,
    required bool isAnswered,
    required String feedbackResult,
    required String feedbackAdvice,
    required String feedbackRecommendation,
    required String modelCode,
  }) = _QuestionScreenState;
}
