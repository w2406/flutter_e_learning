import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'setting_screen_state.dart';

part '../../../generated/presantation/setting/view_model/setting_screen_view_model.g.dart';

@riverpod
class SettingScreenViewModel extends _$SettingScreenViewModel {
  @override
  SettingScreenState build() {
    return SettingScreenState(
      apiKey: '',
      appVersion: '1.0.0',
      isFileLoaded: false,
      fileName: null,
    );
  }
}
