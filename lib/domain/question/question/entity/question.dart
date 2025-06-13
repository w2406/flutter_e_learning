import 'package:freezed_annotation/freezed_annotation.dart';

import '../value_object/id.dart';
import 'choices.dart';

part '../../../../generated/domain/question/question/entity/question.freezed.dart';
part '../../../../generated/domain/question/question/entity/question.g.dart';

@freezed
sealed class Question with _$Question {
  const factory Question.choice({
    required Id id,
    required String title,
    required String questionText,
    required Choices choices,
  }) = ChoiceQuestion;

  const factory Question.code({
    required Id id,
    required String title,
    required String questionText,
  }) = CodeQuestion;

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}
