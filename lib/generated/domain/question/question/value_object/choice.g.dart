// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../domain/question/question/value_object/choice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Choice _$ChoiceFromJson(Map<String, dynamic> json) => _Choice(
  label: json['label'] as String,
  isCorrect: json['isCorrect'] as bool,
);

Map<String, dynamic> _$ChoiceToJson(_Choice instance) => <String, dynamic>{
  'label': instance.label,
  'isCorrect': instance.isCorrect,
};
