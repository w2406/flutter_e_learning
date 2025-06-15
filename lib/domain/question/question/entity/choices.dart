import 'package:freezed_annotation/freezed_annotation.dart';

import 'choice.dart';

part '../../../../generated/domain/question/question/entity/choices.freezed.dart';
part '../../../../generated/domain/question/question/entity/choices.g.dart';

@freezed
abstract class Choices with _$Choices {
  const factory Choices({required List<Choice> values}) = _Choices;

  factory Choices.fromJson(Map<String, dynamic> json) =>
      _$ChoicesFromJson(json);
}
