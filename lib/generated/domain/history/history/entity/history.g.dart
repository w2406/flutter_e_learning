// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../domain/history/history/entity/history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_History _$HistoryFromJson(Map<String, dynamic> json) => _History(
  id: json['id'] as String?,
  questionId: json['questionId'] as String,
  historyTitle: json['historyTitle'] as String,
  historyContent: json['historyContent'] as String,
  answer: Answer.fromJson(json['answer'] as Map<String, dynamic>),
  isCorrect: json['isCorrect'] as bool,
  feedback: Feedback.fromJson(json['feedback'] as Map<String, dynamic>),
  answeredAt: DateTime.parse(json['answeredAt'] as String),
);

Map<String, dynamic> _$HistoryToJson(_History instance) => <String, dynamic>{
  'id': instance.id,
  'questionId': instance.questionId,
  'historyTitle': instance.historyTitle,
  'historyContent': instance.historyContent,
  'answer': instance.answer,
  'isCorrect': instance.isCorrect,
  'feedback': instance.feedback,
  'answeredAt': instance.answeredAt.toIso8601String(),
};
