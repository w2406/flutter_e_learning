// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../domain/history/history/value_object/answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
Answer _$AnswerFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'code':
          return CodeAnswer.fromJson(
            json
          );
                case 'choice':
          return ChoiceAnswer.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'Answer',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$Answer {



  /// Serializes this Answer to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Answer);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Answer()';
}


}

/// @nodoc
class $AnswerCopyWith<$Res>  {
$AnswerCopyWith(Answer _, $Res Function(Answer) __);
}


/// @nodoc
@JsonSerializable()

class CodeAnswer implements Answer {
  const CodeAnswer({required this.code, final  String? $type}): $type = $type ?? 'code';
  factory CodeAnswer.fromJson(Map<String, dynamic> json) => _$CodeAnswerFromJson(json);

 final  String code;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of Answer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CodeAnswerCopyWith<CodeAnswer> get copyWith => _$CodeAnswerCopyWithImpl<CodeAnswer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CodeAnswerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CodeAnswer&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code);

@override
String toString() {
  return 'Answer.code(code: $code)';
}


}

/// @nodoc
abstract mixin class $CodeAnswerCopyWith<$Res> implements $AnswerCopyWith<$Res> {
  factory $CodeAnswerCopyWith(CodeAnswer value, $Res Function(CodeAnswer) _then) = _$CodeAnswerCopyWithImpl;
@useResult
$Res call({
 String code
});




}
/// @nodoc
class _$CodeAnswerCopyWithImpl<$Res>
    implements $CodeAnswerCopyWith<$Res> {
  _$CodeAnswerCopyWithImpl(this._self, this._then);

  final CodeAnswer _self;
  final $Res Function(CodeAnswer) _then;

/// Create a copy of Answer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? code = null,}) {
  return _then(CodeAnswer(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ChoiceAnswer implements Answer {
  const ChoiceAnswer({required this.selectedIndex, required this.choices, final  String? $type}): $type = $type ?? 'choice';
  factory ChoiceAnswer.fromJson(Map<String, dynamic> json) => _$ChoiceAnswerFromJson(json);

 final  int selectedIndex;
 final  Choices choices;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of Answer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChoiceAnswerCopyWith<ChoiceAnswer> get copyWith => _$ChoiceAnswerCopyWithImpl<ChoiceAnswer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChoiceAnswerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChoiceAnswer&&(identical(other.selectedIndex, selectedIndex) || other.selectedIndex == selectedIndex)&&(identical(other.choices, choices) || other.choices == choices));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,selectedIndex,choices);

@override
String toString() {
  return 'Answer.choice(selectedIndex: $selectedIndex, choices: $choices)';
}


}

/// @nodoc
abstract mixin class $ChoiceAnswerCopyWith<$Res> implements $AnswerCopyWith<$Res> {
  factory $ChoiceAnswerCopyWith(ChoiceAnswer value, $Res Function(ChoiceAnswer) _then) = _$ChoiceAnswerCopyWithImpl;
@useResult
$Res call({
 int selectedIndex, Choices choices
});


$ChoicesCopyWith<$Res> get choices;

}
/// @nodoc
class _$ChoiceAnswerCopyWithImpl<$Res>
    implements $ChoiceAnswerCopyWith<$Res> {
  _$ChoiceAnswerCopyWithImpl(this._self, this._then);

  final ChoiceAnswer _self;
  final $Res Function(ChoiceAnswer) _then;

/// Create a copy of Answer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedIndex = null,Object? choices = null,}) {
  return _then(ChoiceAnswer(
selectedIndex: null == selectedIndex ? _self.selectedIndex : selectedIndex // ignore: cast_nullable_to_non_nullable
as int,choices: null == choices ? _self.choices : choices // ignore: cast_nullable_to_non_nullable
as Choices,
  ));
}

/// Create a copy of Answer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChoicesCopyWith<$Res> get choices {
  
  return $ChoicesCopyWith<$Res>(_self.choices, (value) {
    return _then(_self.copyWith(choices: value));
  });
}
}

// dart format on
