// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../domain/question/question/entity/choices.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Choices _$ChoicesFromJson(Map<String, dynamic> json) => _Choices(
  values: (json['values'] as List<dynamic>)
      .map((e) => Choice.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ChoicesToJson(_Choices instance) => <String, dynamic>{
  'values': instance.values,
};
