// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../domain/question/question/entity/question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
Question _$QuestionFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'choice':
          return ChoiceQuestion.fromJson(
            json
          );
                case 'code':
          return CodeQuestion.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'Question',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$Question {

 Id get id; String get title; String get questionText;
/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionCopyWith<Question> get copyWith => _$QuestionCopyWithImpl<Question>(this as Question, _$identity);

  /// Serializes this Question to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Question&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.questionText, questionText) || other.questionText == questionText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,questionText);

@override
String toString() {
  return 'Question(id: $id, title: $title, questionText: $questionText)';
}


}

/// @nodoc
abstract mixin class $QuestionCopyWith<$Res>  {
  factory $QuestionCopyWith(Question value, $Res Function(Question) _then) = _$QuestionCopyWithImpl;
@useResult
$Res call({
 Id id, String title, String questionText
});


$IdCopyWith<$Res> get id;

}
/// @nodoc
class _$QuestionCopyWithImpl<$Res>
    implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._self, this._then);

  final Question _self;
  final $Res Function(Question) _then;

/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? questionText = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Id,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,questionText: null == questionText ? _self.questionText : questionText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IdCopyWith<$Res> get id {
  
  return $IdCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class ChoiceQuestion implements Question {
  const ChoiceQuestion({required this.id, required this.title, required this.questionText, required this.choices, final  String? $type}): $type = $type ?? 'choice';
  factory ChoiceQuestion.fromJson(Map<String, dynamic> json) => _$ChoiceQuestionFromJson(json);

@override final  Id id;
@override final  String title;
@override final  String questionText;
 final  Choices choices;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChoiceQuestionCopyWith<ChoiceQuestion> get copyWith => _$ChoiceQuestionCopyWithImpl<ChoiceQuestion>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChoiceQuestionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChoiceQuestion&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.questionText, questionText) || other.questionText == questionText)&&(identical(other.choices, choices) || other.choices == choices));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,questionText,choices);

@override
String toString() {
  return 'Question.choice(id: $id, title: $title, questionText: $questionText, choices: $choices)';
}


}

/// @nodoc
abstract mixin class $ChoiceQuestionCopyWith<$Res> implements $QuestionCopyWith<$Res> {
  factory $ChoiceQuestionCopyWith(ChoiceQuestion value, $Res Function(ChoiceQuestion) _then) = _$ChoiceQuestionCopyWithImpl;
@override @useResult
$Res call({
 Id id, String title, String questionText, Choices choices
});


@override $IdCopyWith<$Res> get id;$ChoicesCopyWith<$Res> get choices;

}
/// @nodoc
class _$ChoiceQuestionCopyWithImpl<$Res>
    implements $ChoiceQuestionCopyWith<$Res> {
  _$ChoiceQuestionCopyWithImpl(this._self, this._then);

  final ChoiceQuestion _self;
  final $Res Function(ChoiceQuestion) _then;

/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? questionText = null,Object? choices = null,}) {
  return _then(ChoiceQuestion(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Id,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,questionText: null == questionText ? _self.questionText : questionText // ignore: cast_nullable_to_non_nullable
as String,choices: null == choices ? _self.choices : choices // ignore: cast_nullable_to_non_nullable
as Choices,
  ));
}

/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IdCopyWith<$Res> get id {
  
  return $IdCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChoicesCopyWith<$Res> get choices {
  
  return $ChoicesCopyWith<$Res>(_self.choices, (value) {
    return _then(_self.copyWith(choices: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class CodeQuestion implements Question {
  const CodeQuestion({required this.id, required this.title, required this.questionText, final  String? $type}): $type = $type ?? 'code';
  factory CodeQuestion.fromJson(Map<String, dynamic> json) => _$CodeQuestionFromJson(json);

@override final  Id id;
@override final  String title;
@override final  String questionText;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CodeQuestionCopyWith<CodeQuestion> get copyWith => _$CodeQuestionCopyWithImpl<CodeQuestion>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CodeQuestionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CodeQuestion&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.questionText, questionText) || other.questionText == questionText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,questionText);

@override
String toString() {
  return 'Question.code(id: $id, title: $title, questionText: $questionText)';
}


}

/// @nodoc
abstract mixin class $CodeQuestionCopyWith<$Res> implements $QuestionCopyWith<$Res> {
  factory $CodeQuestionCopyWith(CodeQuestion value, $Res Function(CodeQuestion) _then) = _$CodeQuestionCopyWithImpl;
@override @useResult
$Res call({
 Id id, String title, String questionText
});


@override $IdCopyWith<$Res> get id;

}
/// @nodoc
class _$CodeQuestionCopyWithImpl<$Res>
    implements $CodeQuestionCopyWith<$Res> {
  _$CodeQuestionCopyWithImpl(this._self, this._then);

  final CodeQuestion _self;
  final $Res Function(CodeQuestion) _then;

/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? questionText = null,}) {
  return _then(CodeQuestion(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Id,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,questionText: null == questionText ? _self.questionText : questionText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IdCopyWith<$Res> get id {
  
  return $IdCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}
}

// dart format on
