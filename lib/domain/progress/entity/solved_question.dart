import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/progress/entity/solved_question.freezed.dart';

@freezed
abstract class SolvedQuestion with _$SolvedQuestion {
  const factory SolvedQuestion({
    required String questionId,
    required DateTime solvedAt,
    required bool isCorrect,
  }) = _SolvedQuestion;
}
