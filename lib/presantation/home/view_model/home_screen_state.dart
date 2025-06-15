import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/presantation/home/view_model/home_screen_state.freezed.dart';

@freezed
abstract class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState({
    required double progress, // 進捗率
  }) = _HomeScreenState;
}
