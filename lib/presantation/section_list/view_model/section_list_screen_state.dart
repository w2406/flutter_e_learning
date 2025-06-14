import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/presantation/section_list/view_model/section_list_screen_state.freezed.dart';

@freezed
abstract class SectionListScreenState with _$SectionListScreenState {
  const factory SectionListScreenState({
    required List<SectionListItem> sections,
  }) = _SectionListScreenState;
}

@freezed
abstract class SectionListItem with _$SectionListItem {
  const factory SectionListItem({
    required String sectionId,
    required String sectionTitle,
    required String sectionDescription,
  }) = _SectionListItem;
}
