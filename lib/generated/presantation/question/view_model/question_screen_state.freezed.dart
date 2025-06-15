// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../presantation/question/view_model/question_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$QuestionScreenState {

 String get title; String get questionText; String get codeAnswer; int? get selectedChoiceIndex; List<({String id, String label, bool isCorrect})>? get choices; bool get isAnswered; String get feedbackResult; String get feedbackExplanation; String get feedbackAdvice; String get modelCode;
/// Create a copy of QuestionScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionScreenStateCopyWith<QuestionScreenState> get copyWith => _$QuestionScreenStateCopyWithImpl<QuestionScreenState>(this as QuestionScreenState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionScreenState&&(identical(other.title, title) || other.title == title)&&(identical(other.questionText, questionText) || other.questionText == questionText)&&(identical(other.codeAnswer, codeAnswer) || other.codeAnswer == codeAnswer)&&(identical(other.selectedChoiceIndex, selectedChoiceIndex) || other.selectedChoiceIndex == selectedChoiceIndex)&&const DeepCollectionEquality().equals(other.choices, choices)&&(identical(other.isAnswered, isAnswered) || other.isAnswered == isAnswered)&&(identical(other.feedbackResult, feedbackResult) || other.feedbackResult == feedbackResult)&&(identical(other.feedbackExplanation, feedbackExplanation) || other.feedbackExplanation == feedbackExplanation)&&(identical(other.feedbackAdvice, feedbackAdvice) || other.feedbackAdvice == feedbackAdvice)&&(identical(other.modelCode, modelCode) || other.modelCode == modelCode));
}


@override
int get hashCode => Object.hash(runtimeType,title,questionText,codeAnswer,selectedChoiceIndex,const DeepCollectionEquality().hash(choices),isAnswered,feedbackResult,feedbackExplanation,feedbackAdvice,modelCode);

@override
String toString() {
  return 'QuestionScreenState(title: $title, questionText: $questionText, codeAnswer: $codeAnswer, selectedChoiceIndex: $selectedChoiceIndex, choices: $choices, isAnswered: $isAnswered, feedbackResult: $feedbackResult, feedbackExplanation: $feedbackExplanation, feedbackAdvice: $feedbackAdvice, modelCode: $modelCode)';
}


}

/// @nodoc
abstract mixin class $QuestionScreenStateCopyWith<$Res>  {
  factory $QuestionScreenStateCopyWith(QuestionScreenState value, $Res Function(QuestionScreenState) _then) = _$QuestionScreenStateCopyWithImpl;
@useResult
$Res call({
 String title, String questionText, String codeAnswer, int? selectedChoiceIndex, List<({String id, String label, bool isCorrect})>? choices, bool isAnswered, String feedbackResult, String feedbackExplanation, String feedbackAdvice, String modelCode
});




}
/// @nodoc
class _$QuestionScreenStateCopyWithImpl<$Res>
    implements $QuestionScreenStateCopyWith<$Res> {
  _$QuestionScreenStateCopyWithImpl(this._self, this._then);

  final QuestionScreenState _self;
  final $Res Function(QuestionScreenState) _then;

/// Create a copy of QuestionScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? questionText = null,Object? codeAnswer = null,Object? selectedChoiceIndex = freezed,Object? choices = freezed,Object? isAnswered = null,Object? feedbackResult = null,Object? feedbackExplanation = null,Object? feedbackAdvice = null,Object? modelCode = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,questionText: null == questionText ? _self.questionText : questionText // ignore: cast_nullable_to_non_nullable
as String,codeAnswer: null == codeAnswer ? _self.codeAnswer : codeAnswer // ignore: cast_nullable_to_non_nullable
as String,selectedChoiceIndex: freezed == selectedChoiceIndex ? _self.selectedChoiceIndex : selectedChoiceIndex // ignore: cast_nullable_to_non_nullable
as int?,choices: freezed == choices ? _self.choices : choices // ignore: cast_nullable_to_non_nullable
as List<({String id, String label, bool isCorrect})>?,isAnswered: null == isAnswered ? _self.isAnswered : isAnswered // ignore: cast_nullable_to_non_nullable
as bool,feedbackResult: null == feedbackResult ? _self.feedbackResult : feedbackResult // ignore: cast_nullable_to_non_nullable
as String,feedbackExplanation: null == feedbackExplanation ? _self.feedbackExplanation : feedbackExplanation // ignore: cast_nullable_to_non_nullable
as String,feedbackAdvice: null == feedbackAdvice ? _self.feedbackAdvice : feedbackAdvice // ignore: cast_nullable_to_non_nullable
as String,modelCode: null == modelCode ? _self.modelCode : modelCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _QuestionScreenState implements QuestionScreenState {
  const _QuestionScreenState({required this.title, required this.questionText, required this.codeAnswer, required this.selectedChoiceIndex, required final  List<({String id, String label, bool isCorrect})>? choices, required this.isAnswered, required this.feedbackResult, required this.feedbackExplanation, required this.feedbackAdvice, required this.modelCode}): _choices = choices;
  

@override final  String title;
@override final  String questionText;
@override final  String codeAnswer;
@override final  int? selectedChoiceIndex;
 final  List<({String id, String label, bool isCorrect})>? _choices;
@override List<({String id, String label, bool isCorrect})>? get choices {
  final value = _choices;
  if (value == null) return null;
  if (_choices is EqualUnmodifiableListView) return _choices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  bool isAnswered;
@override final  String feedbackResult;
@override final  String feedbackExplanation;
@override final  String feedbackAdvice;
@override final  String modelCode;

/// Create a copy of QuestionScreenState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestionScreenStateCopyWith<_QuestionScreenState> get copyWith => __$QuestionScreenStateCopyWithImpl<_QuestionScreenState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuestionScreenState&&(identical(other.title, title) || other.title == title)&&(identical(other.questionText, questionText) || other.questionText == questionText)&&(identical(other.codeAnswer, codeAnswer) || other.codeAnswer == codeAnswer)&&(identical(other.selectedChoiceIndex, selectedChoiceIndex) || other.selectedChoiceIndex == selectedChoiceIndex)&&const DeepCollectionEquality().equals(other._choices, _choices)&&(identical(other.isAnswered, isAnswered) || other.isAnswered == isAnswered)&&(identical(other.feedbackResult, feedbackResult) || other.feedbackResult == feedbackResult)&&(identical(other.feedbackExplanation, feedbackExplanation) || other.feedbackExplanation == feedbackExplanation)&&(identical(other.feedbackAdvice, feedbackAdvice) || other.feedbackAdvice == feedbackAdvice)&&(identical(other.modelCode, modelCode) || other.modelCode == modelCode));
}


@override
int get hashCode => Object.hash(runtimeType,title,questionText,codeAnswer,selectedChoiceIndex,const DeepCollectionEquality().hash(_choices),isAnswered,feedbackResult,feedbackExplanation,feedbackAdvice,modelCode);

@override
String toString() {
  return 'QuestionScreenState(title: $title, questionText: $questionText, codeAnswer: $codeAnswer, selectedChoiceIndex: $selectedChoiceIndex, choices: $choices, isAnswered: $isAnswered, feedbackResult: $feedbackResult, feedbackExplanation: $feedbackExplanation, feedbackAdvice: $feedbackAdvice, modelCode: $modelCode)';
}


}

/// @nodoc
abstract mixin class _$QuestionScreenStateCopyWith<$Res> implements $QuestionScreenStateCopyWith<$Res> {
  factory _$QuestionScreenStateCopyWith(_QuestionScreenState value, $Res Function(_QuestionScreenState) _then) = __$QuestionScreenStateCopyWithImpl;
@override @useResult
$Res call({
 String title, String questionText, String codeAnswer, int? selectedChoiceIndex, List<({String id, String label, bool isCorrect})>? choices, bool isAnswered, String feedbackResult, String feedbackExplanation, String feedbackAdvice, String modelCode
});




}
/// @nodoc
class __$QuestionScreenStateCopyWithImpl<$Res>
    implements _$QuestionScreenStateCopyWith<$Res> {
  __$QuestionScreenStateCopyWithImpl(this._self, this._then);

  final _QuestionScreenState _self;
  final $Res Function(_QuestionScreenState) _then;

/// Create a copy of QuestionScreenState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? questionText = null,Object? codeAnswer = null,Object? selectedChoiceIndex = freezed,Object? choices = freezed,Object? isAnswered = null,Object? feedbackResult = null,Object? feedbackExplanation = null,Object? feedbackAdvice = null,Object? modelCode = null,}) {
  return _then(_QuestionScreenState(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,questionText: null == questionText ? _self.questionText : questionText // ignore: cast_nullable_to_non_nullable
as String,codeAnswer: null == codeAnswer ? _self.codeAnswer : codeAnswer // ignore: cast_nullable_to_non_nullable
as String,selectedChoiceIndex: freezed == selectedChoiceIndex ? _self.selectedChoiceIndex : selectedChoiceIndex // ignore: cast_nullable_to_non_nullable
as int?,choices: freezed == choices ? _self._choices : choices // ignore: cast_nullable_to_non_nullable
as List<({String id, String label, bool isCorrect})>?,isAnswered: null == isAnswered ? _self.isAnswered : isAnswered // ignore: cast_nullable_to_non_nullable
as bool,feedbackResult: null == feedbackResult ? _self.feedbackResult : feedbackResult // ignore: cast_nullable_to_non_nullable
as String,feedbackExplanation: null == feedbackExplanation ? _self.feedbackExplanation : feedbackExplanation // ignore: cast_nullable_to_non_nullable
as String,feedbackAdvice: null == feedbackAdvice ? _self.feedbackAdvice : feedbackAdvice // ignore: cast_nullable_to_non_nullable
as String,modelCode: null == modelCode ? _self.modelCode : modelCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
