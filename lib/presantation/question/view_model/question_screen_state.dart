import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/presantation/question/view_model/question_screen_state.freezed.dart';

@freezed
abstract class QuestionScreenState with _$QuestionScreenState {
  const factory QuestionScreenState({
    required String title,
    required String questionText,
    required String codeAnswer,
    required int? selectedChoiceIndex,
    required List<({String id, String label, bool isCorrect})>? choices,
    required bool isAnswered,
    required String feedbackResult,
    required String feedbackExplanation,
    required String feedbackAdvice,
    required String modelCode,
  }) = _QuestionScreenState;
}
