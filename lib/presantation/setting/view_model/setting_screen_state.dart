import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/presantation/setting/view_model/setting_screen_state.freezed.dart';

@freezed
abstract class SettingScreenState with _$SettingScreenState {
  const factory SettingScreenState({
    required String apiKey,
    required String appVersion,
    required bool isFileLoaded,
    String? fileName,
  }) = _SettingScreenState;
}
