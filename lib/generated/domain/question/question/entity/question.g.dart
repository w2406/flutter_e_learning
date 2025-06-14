// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../domain/question/question/entity/question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChoiceQuestion _$ChoiceQuestionFromJson(Map<String, dynamic> json) =>
    ChoiceQuestion(
      id: const IdConverter().fromJson(json['id'] as Object),
      title: json['title'] as String,
      questionText: json['questionText'] as String,
      section: Section.fromJson(json['section'] as Map<String, dynamic>),
      choices: const ChoicesConverter().fromJson(json['choices'] as Object),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ChoiceQuestionToJson(ChoiceQuestion instance) =>
    <String, dynamic>{
      'id': const IdConverter().toJson(instance.id),
      'title': instance.title,
      'questionText': instance.questionText,
      'section': instance.section,
      'choices': const ChoicesConverter().toJson(instance.choices),
      'runtimeType': instance.$type,
    };

CodeQuestion _$CodeQuestionFromJson(Map<String, dynamic> json) => CodeQuestion(
  id: const IdConverter().fromJson(json['id'] as Object),
  title: json['title'] as String,
  questionText: json['questionText'] as String,
  section: Section.fromJson(json['section'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$CodeQuestionToJson(CodeQuestion instance) =>
    <String, dynamic>{
      'id': const IdConverter().toJson(instance.id),
      'title': instance.title,
      'questionText': instance.questionText,
      'section': instance.section,
      'runtimeType': instance.$type,
    };
