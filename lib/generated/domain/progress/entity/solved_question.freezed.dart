// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/progress/entity/solved_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SolvedQuestion {

 String get questionId; DateTime get solvedAt; bool get isCorrect;
/// Create a copy of SolvedQuestion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SolvedQuestionCopyWith<SolvedQuestion> get copyWith => _$SolvedQuestionCopyWithImpl<SolvedQuestion>(this as SolvedQuestion, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SolvedQuestion&&(identical(other.questionId, questionId) || other.questionId == questionId)&&(identical(other.solvedAt, solvedAt) || other.solvedAt == solvedAt)&&(identical(other.isCorrect, isCorrect) || other.isCorrect == isCorrect));
}


@override
int get hashCode => Object.hash(runtimeType,questionId,solvedAt,isCorrect);

@override
String toString() {
  return 'SolvedQuestion(questionId: $questionId, solvedAt: $solvedAt, isCorrect: $isCorrect)';
}


}

/// @nodoc
abstract mixin class $SolvedQuestionCopyWith<$Res>  {
  factory $SolvedQuestionCopyWith(SolvedQuestion value, $Res Function(SolvedQuestion) _then) = _$SolvedQuestionCopyWithImpl;
@useResult
$Res call({
 String questionId, DateTime solvedAt, bool isCorrect
});




}
/// @nodoc
class _$SolvedQuestionCopyWithImpl<$Res>
    implements $SolvedQuestionCopyWith<$Res> {
  _$SolvedQuestionCopyWithImpl(this._self, this._then);

  final SolvedQuestion _self;
  final $Res Function(SolvedQuestion) _then;

/// Create a copy of SolvedQuestion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? questionId = null,Object? solvedAt = null,Object? isCorrect = null,}) {
  return _then(_self.copyWith(
questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as String,solvedAt: null == solvedAt ? _self.solvedAt : solvedAt // ignore: cast_nullable_to_non_nullable
as DateTime,isCorrect: null == isCorrect ? _self.isCorrect : isCorrect // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _SolvedQuestion implements SolvedQuestion {
  const _SolvedQuestion({required this.questionId, required this.solvedAt, required this.isCorrect});
  

@override final  String questionId;
@override final  DateTime solvedAt;
@override final  bool isCorrect;

/// Create a copy of SolvedQuestion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SolvedQuestionCopyWith<_SolvedQuestion> get copyWith => __$SolvedQuestionCopyWithImpl<_SolvedQuestion>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SolvedQuestion&&(identical(other.questionId, questionId) || other.questionId == questionId)&&(identical(other.solvedAt, solvedAt) || other.solvedAt == solvedAt)&&(identical(other.isCorrect, isCorrect) || other.isCorrect == isCorrect));
}


@override
int get hashCode => Object.hash(runtimeType,questionId,solvedAt,isCorrect);

@override
String toString() {
  return 'SolvedQuestion(questionId: $questionId, solvedAt: $solvedAt, isCorrect: $isCorrect)';
}


}

/// @nodoc
abstract mixin class _$SolvedQuestionCopyWith<$Res> implements $SolvedQuestionCopyWith<$Res> {
  factory _$SolvedQuestionCopyWith(_SolvedQuestion value, $Res Function(_SolvedQuestion) _then) = __$SolvedQuestionCopyWithImpl;
@override @useResult
$Res call({
 String questionId, DateTime solvedAt, bool isCorrect
});




}
/// @nodoc
class __$SolvedQuestionCopyWithImpl<$Res>
    implements _$SolvedQuestionCopyWith<$Res> {
  __$SolvedQuestionCopyWithImpl(this._self, this._then);

  final _SolvedQuestion _self;
  final $Res Function(_SolvedQuestion) _then;

/// Create a copy of SolvedQuestion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? questionId = null,Object? solvedAt = null,Object? isCorrect = null,}) {
  return _then(_SolvedQuestion(
questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as String,solvedAt: null == solvedAt ? _self.solvedAt : solvedAt // ignore: cast_nullable_to_non_nullable
as DateTime,isCorrect: null == isCorrect ? _self.isCorrect : isCorrect // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
