// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../domain/question/section/value_object/section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Section _$SectionFromJson(Map<String, dynamic> json) => _Section(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String?,
);

Map<String, dynamic> _$SectionToJson(_Section instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
};
