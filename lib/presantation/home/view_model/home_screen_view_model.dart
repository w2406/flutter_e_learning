import 'package:flutter_e_learning/presantation/home/view_model/home_screen_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../../../generated/presantation/home/view_model/home_screen_view_model.g.dart';

@riverpod
class HomeScreenViewModel extends _$HomeScreenViewModel {
  @override
  HomeScreenState build() {
    // 仮の進捗率（0〜100）
    return HomeScreenState(progress: 60);
  }

  // 進捗率を更新するメソッド例
  void updateProgress(int value) {
    state = state.copyWith(progress: value);
  }
}
