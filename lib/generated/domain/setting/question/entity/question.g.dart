// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../domain/setting/question/entity/question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Question _$QuestionFromJson(Map<String, dynamic> json) => _Question(
  id: Id.fromJson(json['id'] as Map<String, dynamic>),
  title: json['title'] as String,
  description: json['description'] as String,
  task: json['task'] as String,
  choices: Choices.fromJson(json['choices'] as Map<String, dynamic>),
);

Map<String, dynamic> _$QuestionToJson(_Question instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'task': instance.task,
  'choices': instance.choices,
};
