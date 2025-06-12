import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/domain/question/question/value_object/id.freezed.dart';
part '../../../../generated/domain/question/question/value_object/id.g.dart';

@freezed
abstract class Id with _$Id {
  const factory Id({required String value}) = _Id;
  factory Id.fromJson(Map<String, dynamic> json) => _$IdFromJson(json);
}
