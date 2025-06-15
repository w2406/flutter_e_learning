import 'package:flutter_e_learning/domain/question/question/entity/choice.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/domain/history/history/value_object/answer.freezed.dart';
part '../../../../generated/domain/history/history/value_object/answer.g.dart';

@freezed
sealed class Answer with _$Answer {
  const factory Answer.code({required String code}) = CodeAnswer;

  const factory Answer.choice({required Choice choice}) = ChoiceAnswer;

  factory Answer.fromJson(Map<String, dynamic> json) => _$AnswerFromJson(json);
}
