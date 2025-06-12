import 'package:freezed_annotation/freezed_annotation.dart';

import '../value_object/id.dart';
import 'choices.dart';

part '../../../../generated/domain/question/question/entity/question.freezed.dart';
part '../../../../generated/domain/question/question/entity/question.g.dart';

@freezed
abstract class Question with _$Question {
  const factory Question({
    required Id id,
    required String title,
    required String description,
    required String task,
    required Choices choices,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}
