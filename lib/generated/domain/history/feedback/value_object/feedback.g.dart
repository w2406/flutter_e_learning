// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../domain/history/feedback/value_object/feedback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Feedback _$FeedbackFromJson(Map<String, dynamic> json) => _Feedback(
  explanation: json['explanation'] as String,
  advice: json['advice'] as String?,
  sampleCode: json['sampleCode'] as String?,
);

Map<String, dynamic> _$FeedbackToJson(_Feedback instance) => <String, dynamic>{
  'explanation': instance.explanation,
  'advice': instance.advice,
  'sampleCode': instance.sampleCode,
};
