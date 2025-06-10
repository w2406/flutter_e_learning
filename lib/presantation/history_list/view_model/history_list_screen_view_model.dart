import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'history_list_screen_state.dart';

part '../../../generated/presantation/history_list/view_model/history_list_screen_view_model.g.dart';

@riverpod
class HistoryListScreenViewModel extends _$HistoryListScreenViewModel {
  @override
  HistoryListScreenState build() {
    // 仮の履歴リスト
    return HistoryListScreenState(
      items: List.generate(
        8,
        (index) => HistoryListItem(
          questionTitle: '解いた問題${index + 1}',
          answeredAt: '2025/06/0${(index % 9) + 1}',
          isCorrect: true, // 偶数:正解, 奇数:不正解
        ),
      ),
    );
  }
}
