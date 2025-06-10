import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'section_screen_state.dart';

part '../../../generated/presantation/section/view_model/section_screen_view_model.g.dart';

@riverpod
class SectionScreenViewModel extends _$SectionScreenViewModel {
  @override
  SectionScreenState build() {
    return SectionScreenState(
      sectionTitle: 'サンプルセクション',
      questions: [
        SectionQuestionItem(
          questionTitle: '問題1',
          questionDescription: '問題1の説明',
        ),
        SectionQuestionItem(
          questionTitle: '問題2',
          questionDescription: '問題2の説明',
        ),
      ],
    );
  }
}
