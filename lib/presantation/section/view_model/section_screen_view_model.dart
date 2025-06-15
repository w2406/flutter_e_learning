import 'package:flutter_e_learning/common/provider/usecase_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'section_screen_state.dart';

part '../../../generated/presantation/section/view_model/section_screen_view_model.g.dart';

@riverpod
class SectionScreenViewModel extends _$SectionScreenViewModel {
  @override
  Future<SectionScreenState> build(String sectionId) async {
    final section = await ref
        .read(getSectionUsecaseProvider)
        .execute(sectionId);
    if (section == null) {
      return SectionScreenState(sectionTitle: 'Unknown Section', questions: []);
    }
    final questions = await ref
        .read(getQuestionsUseCaseProvider)
        .execute(section);
    return SectionScreenState(
      sectionTitle: section.title,
      questions: await Future.wait(
        questions.map((question) async {
          final isCorrect = await ref
              .read(checkSolvedQuestionUseCaseProvider)
              .execute(question.id.value);
          return SectionQuestionItem(
            questionId: question.id.value,
            title: question.title,
            questionText: question.questionText,
            isCorrect: isCorrect,
          );
        }),
      ),
    );
  }
}
