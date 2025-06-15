import 'package:flutter_e_learning/common/provider/usecase_provider.dart';
import 'package:flutter_e_learning/presantation/home/view_model/home_screen_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../../../generated/presantation/home/view_model/home_screen_view_model.g.dart';

@riverpod
class HomeScreenViewModel extends _$HomeScreenViewModel {
  @override
  Future<HomeScreenState> build() async {
    final questionCount = await ref
        .read(getAllQuestionCountUseCaseProvider)
        .execute();
    final solvedQuestionCount = await ref
        .read(getSolvedQuestionCountUseCaseProvider)
        .execute();
    final progress = questionCount == 0
        ? 0.0
        : solvedQuestionCount / questionCount * 100;
    return HomeScreenState(progress: progress);
  }
}
