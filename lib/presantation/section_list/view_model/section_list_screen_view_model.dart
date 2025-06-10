import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'section_list_screen_state.dart';

part '../../../generated/presantation/section_list/view_model/section_list_screen_view_model.g.dart';

@riverpod
class SectionListScreenViewModel extends _$SectionListScreenViewModel {
  @override
  SectionListScreenState build() {
    return SectionListScreenState(
      sections: [
        SectionListItem(
          sectionTitle: 'セクション1',
          sectionDescription: 'セクション1の説明',
        ),
        SectionListItem(
          sectionTitle: 'セクション2',
          sectionDescription: 'セクション2の説明',
        ),
      ],
    );
  }
}
