import 'package:flutter_e_learning/common/provider/usecase_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'section_list_screen_state.dart';

part '../../../generated/presantation/section_list/view_model/section_list_screen_view_model.g.dart';

@riverpod
class SectionListScreenViewModel extends _$SectionListScreenViewModel {
  @override
  Future<SectionListScreenState> build() async {
    final getSectionsUseCase = ref.read(getSectionsUsecaseProvider);
    final sections = await getSectionsUseCase.execute();
    return SectionListScreenState(
      sections: sections
          .map(
            (s) => SectionListItem(
              sectionId: s.id,
              sectionTitle: s.title,
              sectionDescription: s.description ?? '',
            ),
          )
          .toList(),
    );
  }
}
