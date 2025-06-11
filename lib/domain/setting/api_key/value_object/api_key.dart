import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/domain/setting/api_key/value_object/api_key.freezed.dart';

@freezed
abstract class ApiKey with _$ApiKey {
  const factory ApiKey({required String value}) = _ApiKey;
}
