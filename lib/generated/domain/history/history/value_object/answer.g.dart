// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../domain/history/history/value_object/answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CodeAnswer _$CodeAnswerFromJson(Map<String, dynamic> json) => CodeAnswer(
  code: json['code'] as String,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$CodeAnswerToJson(CodeAnswer instance) =>
    <String, dynamic>{'code': instance.code, 'runtimeType': instance.$type};

ChoiceAnswer _$ChoiceAnswerFromJson(Map<String, dynamic> json) => ChoiceAnswer(
  choice: Choice.fromJson(json['choice'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$ChoiceAnswerToJson(ChoiceAnswer instance) =>
    <String, dynamic>{'choice': instance.choice, 'runtimeType': instance.$type};
