import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/domain/setting/app_version/value_object/app_version.freezed.dart';

@freezed
abstract class AppVersion with _$AppVersion {
  const factory AppVersion({required String value}) = _AppVersion;
}
