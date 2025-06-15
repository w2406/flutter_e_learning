import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/presantation/section/view_model/section_screen_state.freezed.dart';

@freezed
abstract class SectionScreenState with _$SectionScreenState {
  const factory SectionScreenState({
    required String sectionTitle,
    required List<SectionQuestionItem> questions,
  }) = _SectionScreenState;
}

@freezed
abstract class SectionQuestionItem with _$SectionQuestionItem {
  const factory SectionQuestionItem({
    required String questionId,
    required String title,
    required String questionText,
    bool? isCorrect,
  }) = _SectionQuestionItem;
}
