// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../domain/question/question/entity/question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChoiceQuestion _$ChoiceQuestionFromJson(Map<String, dynamic> json) =>
    ChoiceQuestion(
      id: Id.fromJson(json['id'] as Map<String, dynamic>),
      title: json['title'] as String,
      questionText: json['questionText'] as String,
      choices: Choices.fromJson(json['choices'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ChoiceQuestionToJson(ChoiceQuestion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'questionText': instance.questionText,
      'choices': instance.choices,
      'runtimeType': instance.$type,
    };

CodeQuestion _$CodeQuestionFromJson(Map<String, dynamic> json) => CodeQuestion(
  id: Id.fromJson(json['id'] as Map<String, dynamic>),
  title: json['title'] as String,
  questionText: json['questionText'] as String,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$CodeQuestionToJson(CodeQuestion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'questionText': instance.questionText,
      'runtimeType': instance.$type,
    };
