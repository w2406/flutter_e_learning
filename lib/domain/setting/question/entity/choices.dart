import 'package:freezed_annotation/freezed_annotation.dart';

import '../value_object/choice.dart';

part '../../../../generated/domain/setting/question/entity/choices.freezed.dart';
part '../../../../generated/domain/setting/question/entity/choices.g.dart';

@freezed
abstract class Choices with _$Choices {
  const factory Choices({required List<Choice> values}) = _Choices;

  factory Choices.fromJson(Map<String, dynamic> json) =>
      _$ChoicesFromJson(json);
}
