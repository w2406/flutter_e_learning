// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../domain/history/history/value_object/feedback.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Feedback {

 String get explanation; String? get advice; String? get sampleCode;
/// Create a copy of Feedback
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedbackCopyWith<Feedback> get copyWith => _$FeedbackCopyWithImpl<Feedback>(this as Feedback, _$identity);

  /// Serializes this Feedback to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Feedback&&(identical(other.explanation, explanation) || other.explanation == explanation)&&(identical(other.advice, advice) || other.advice == advice)&&(identical(other.sampleCode, sampleCode) || other.sampleCode == sampleCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,explanation,advice,sampleCode);

@override
String toString() {
  return 'Feedback(explanation: $explanation, advice: $advice, sampleCode: $sampleCode)';
}


}

/// @nodoc
abstract mixin class $FeedbackCopyWith<$Res>  {
  factory $FeedbackCopyWith(Feedback value, $Res Function(Feedback) _then) = _$FeedbackCopyWithImpl;
@useResult
$Res call({
 String explanation, String? advice, String? sampleCode
});




}
/// @nodoc
class _$FeedbackCopyWithImpl<$Res>
    implements $FeedbackCopyWith<$Res> {
  _$FeedbackCopyWithImpl(this._self, this._then);

  final Feedback _self;
  final $Res Function(Feedback) _then;

/// Create a copy of Feedback
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? explanation = null,Object? advice = freezed,Object? sampleCode = freezed,}) {
  return _then(_self.copyWith(
explanation: null == explanation ? _self.explanation : explanation // ignore: cast_nullable_to_non_nullable
as String,advice: freezed == advice ? _self.advice : advice // ignore: cast_nullable_to_non_nullable
as String?,sampleCode: freezed == sampleCode ? _self.sampleCode : sampleCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Feedback implements Feedback {
  const _Feedback({required this.explanation, this.advice, this.sampleCode});
  factory _Feedback.fromJson(Map<String, dynamic> json) => _$FeedbackFromJson(json);

@override final  String explanation;
@override final  String? advice;
@override final  String? sampleCode;

/// Create a copy of Feedback
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedbackCopyWith<_Feedback> get copyWith => __$FeedbackCopyWithImpl<_Feedback>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeedbackToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Feedback&&(identical(other.explanation, explanation) || other.explanation == explanation)&&(identical(other.advice, advice) || other.advice == advice)&&(identical(other.sampleCode, sampleCode) || other.sampleCode == sampleCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,explanation,advice,sampleCode);

@override
String toString() {
  return 'Feedback(explanation: $explanation, advice: $advice, sampleCode: $sampleCode)';
}


}

/// @nodoc
abstract mixin class _$FeedbackCopyWith<$Res> implements $FeedbackCopyWith<$Res> {
  factory _$FeedbackCopyWith(_Feedback value, $Res Function(_Feedback) _then) = __$FeedbackCopyWithImpl;
@override @useResult
$Res call({
 String explanation, String? advice, String? sampleCode
});




}
/// @nodoc
class __$FeedbackCopyWithImpl<$Res>
    implements _$FeedbackCopyWith<$Res> {
  __$FeedbackCopyWithImpl(this._self, this._then);

  final _Feedback _self;
  final $Res Function(_Feedback) _then;

/// Create a copy of Feedback
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? explanation = null,Object? advice = freezed,Object? sampleCode = freezed,}) {
  return _then(_Feedback(
explanation: null == explanation ? _self.explanation : explanation // ignore: cast_nullable_to_non_nullable
as String,advice: freezed == advice ? _self.advice : advice // ignore: cast_nullable_to_non_nullable
as String?,sampleCode: freezed == sampleCode ? _self.sampleCode : sampleCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
