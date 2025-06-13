import 'package:flutter_e_learning/common/provider/usecase_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'section_screen_state.dart';

part '../../../generated/presantation/section/view_model/section_screen_view_model.g.dart';

@riverpod
class SectionScreenViewModel extends _$SectionScreenViewModel {
  @override
  Future<SectionScreenState> build() async {
    final getQuestionsUseCase = ref.read(getQuestionsUseCaseProvider);
    final questions = await getQuestionsUseCase.execute();
    return SectionScreenState(
      sectionTitle: 'サンプルセクション',
      questions: questions
          .map(
            (question) => SectionQuestionItem(
              questionId: question.id.value,
              title: question.title,
              questionText: question.questionText,
            ),
          )
          .toList(),
    );
  }
}
