// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../domain/question/question/entity/choice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Choice _$ChoiceFromJson(Map<String, dynamic> json) => _Choice(
  id: json['id'] as String?,
  label: json['label'] as String,
  isCorrect: json['isCorrect'] as bool,
);

Map<String, dynamic> _$ChoiceToJson(_Choice instance) => <String, dynamic>{
  'id': instance.id,
  'label': instance.label,
  'isCorrect': instance.isCorrect,
};
