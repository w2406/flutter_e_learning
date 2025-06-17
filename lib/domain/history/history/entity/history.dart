import 'package:flutter_e_learning/domain/history/feedback/value_object/feedback.dart';
import 'package:flutter_e_learning/domain/history/history/value_object/answer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/domain/history/history/entity/history.freezed.dart';
part '../../../../generated/domain/history/history/entity/history.g.dart';

@freezed
abstract class History with _$History {
  const factory History({
    required String? id,
    required String questionId,
    required String historyTitle,
    required String historyContent,
    required Answer answer,
    required bool isCorrect,
    required Feedback feedback,
    required DateTime answeredAt,
  }) = _History;

  factory History.fromJson(Map<String, dynamic> json) =>
      _$HistoryFromJson(json);
}
