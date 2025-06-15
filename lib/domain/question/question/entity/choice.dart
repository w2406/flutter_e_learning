import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/domain/question/question/entity/choice.freezed.dart';
part '../../../../generated/domain/question/question/entity/choice.g.dart';

@freezed
abstract class Choice with _$Choice {
  const factory Choice({
    required String? id,
    required String label,
    required bool isCorrect,
  }) = _Choice;

  factory Choice.fromJson(Map<String, dynamic> json) => _$ChoiceFromJson(json);
}
