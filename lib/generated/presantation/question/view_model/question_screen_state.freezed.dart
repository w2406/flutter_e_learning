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

 String get questionTitle; String get description; String get task; String get codeAnswer; int get selectedChoice; List<String> get choices; bool get isAnswered; String get feedbackResult; String get feedbackAdvice; String get feedbackRecommendation; String get modelCode;
/// Create a copy of QuestionScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionScreenStateCopyWith<QuestionScreenState> get copyWith => _$QuestionScreenStateCopyWithImpl<QuestionScreenState>(this as QuestionScreenState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionScreenState&&(identical(other.questionTitle, questionTitle) || other.questionTitle == questionTitle)&&(identical(other.description, description) || other.description == description)&&(identical(other.task, task) || other.task == task)&&(identical(other.codeAnswer, codeAnswer) || other.codeAnswer == codeAnswer)&&(identical(other.selectedChoice, selectedChoice) || other.selectedChoice == selectedChoice)&&const DeepCollectionEquality().equals(other.choices, choices)&&(identical(other.isAnswered, isAnswered) || other.isAnswered == isAnswered)&&(identical(other.feedbackResult, feedbackResult) || other.feedbackResult == feedbackResult)&&(identical(other.feedbackAdvice, feedbackAdvice) || other.feedbackAdvice == feedbackAdvice)&&(identical(other.feedbackRecommendation, feedbackRecommendation) || other.feedbackRecommendation == feedbackRecommendation)&&(identical(other.modelCode, modelCode) || other.modelCode == modelCode));
}


@override
int get hashCode => Object.hash(runtimeType,questionTitle,description,task,codeAnswer,selectedChoice,const DeepCollectionEquality().hash(choices),isAnswered,feedbackResult,feedbackAdvice,feedbackRecommendation,modelCode);

@override
String toString() {
  return 'QuestionScreenState(questionTitle: $questionTitle, description: $description, task: $task, codeAnswer: $codeAnswer, selectedChoice: $selectedChoice, choices: $choices, isAnswered: $isAnswered, feedbackResult: $feedbackResult, feedbackAdvice: $feedbackAdvice, feedbackRecommendation: $feedbackRecommendation, modelCode: $modelCode)';
}


}

/// @nodoc
abstract mixin class $QuestionScreenStateCopyWith<$Res>  {
  factory $QuestionScreenStateCopyWith(QuestionScreenState value, $Res Function(QuestionScreenState) _then) = _$QuestionScreenStateCopyWithImpl;
@useResult
$Res call({
 String questionTitle, String description, String task, String codeAnswer, int selectedChoice, List<String> choices, bool isAnswered, String feedbackResult, String feedbackAdvice, String feedbackRecommendation, String modelCode
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
@pragma('vm:prefer-inline') @override $Res call({Object? questionTitle = null,Object? description = null,Object? task = null,Object? codeAnswer = null,Object? selectedChoice = null,Object? choices = null,Object? isAnswered = null,Object? feedbackResult = null,Object? feedbackAdvice = null,Object? feedbackRecommendation = null,Object? modelCode = null,}) {
  return _then(_self.copyWith(
questionTitle: null == questionTitle ? _self.questionTitle : questionTitle // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,task: null == task ? _self.task : task // ignore: cast_nullable_to_non_nullable
as String,codeAnswer: null == codeAnswer ? _self.codeAnswer : codeAnswer // ignore: cast_nullable_to_non_nullable
as String,selectedChoice: null == selectedChoice ? _self.selectedChoice : selectedChoice // ignore: cast_nullable_to_non_nullable
as int,choices: null == choices ? _self.choices : choices // ignore: cast_nullable_to_non_nullable
as List<String>,isAnswered: null == isAnswered ? _self.isAnswered : isAnswered // ignore: cast_nullable_to_non_nullable
as bool,feedbackResult: null == feedbackResult ? _self.feedbackResult : feedbackResult // ignore: cast_nullable_to_non_nullable
as String,feedbackAdvice: null == feedbackAdvice ? _self.feedbackAdvice : feedbackAdvice // ignore: cast_nullable_to_non_nullable
as String,feedbackRecommendation: null == feedbackRecommendation ? _self.feedbackRecommendation : feedbackRecommendation // ignore: cast_nullable_to_non_nullable
as String,modelCode: null == modelCode ? _self.modelCode : modelCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _QuestionScreenState implements QuestionScreenState {
  const _QuestionScreenState({required this.questionTitle, required this.description, required this.task, required this.codeAnswer, required this.selectedChoice, required final  List<String> choices, required this.isAnswered, required this.feedbackResult, required this.feedbackAdvice, required this.feedbackRecommendation, required this.modelCode}): _choices = choices;
  

@override final  String questionTitle;
@override final  String description;
@override final  String task;
@override final  String codeAnswer;
@override final  int selectedChoice;
 final  List<String> _choices;
@override List<String> get choices {
  if (_choices is EqualUnmodifiableListView) return _choices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_choices);
}

@override final  bool isAnswered;
@override final  String feedbackResult;
@override final  String feedbackAdvice;
@override final  String feedbackRecommendation;
@override final  String modelCode;

/// Create a copy of QuestionScreenState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestionScreenStateCopyWith<_QuestionScreenState> get copyWith => __$QuestionScreenStateCopyWithImpl<_QuestionScreenState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuestionScreenState&&(identical(other.questionTitle, questionTitle) || other.questionTitle == questionTitle)&&(identical(other.description, description) || other.description == description)&&(identical(other.task, task) || other.task == task)&&(identical(other.codeAnswer, codeAnswer) || other.codeAnswer == codeAnswer)&&(identical(other.selectedChoice, selectedChoice) || other.selectedChoice == selectedChoice)&&const DeepCollectionEquality().equals(other._choices, _choices)&&(identical(other.isAnswered, isAnswered) || other.isAnswered == isAnswered)&&(identical(other.feedbackResult, feedbackResult) || other.feedbackResult == feedbackResult)&&(identical(other.feedbackAdvice, feedbackAdvice) || other.feedbackAdvice == feedbackAdvice)&&(identical(other.feedbackRecommendation, feedbackRecommendation) || other.feedbackRecommendation == feedbackRecommendation)&&(identical(other.modelCode, modelCode) || other.modelCode == modelCode));
}


@override
int get hashCode => Object.hash(runtimeType,questionTitle,description,task,codeAnswer,selectedChoice,const DeepCollectionEquality().hash(_choices),isAnswered,feedbackResult,feedbackAdvice,feedbackRecommendation,modelCode);

@override
String toString() {
  return 'QuestionScreenState(questionTitle: $questionTitle, description: $description, task: $task, codeAnswer: $codeAnswer, selectedChoice: $selectedChoice, choices: $choices, isAnswered: $isAnswered, feedbackResult: $feedbackResult, feedbackAdvice: $feedbackAdvice, feedbackRecommendation: $feedbackRecommendation, modelCode: $modelCode)';
}


}

/// @nodoc
abstract mixin class _$QuestionScreenStateCopyWith<$Res> implements $QuestionScreenStateCopyWith<$Res> {
  factory _$QuestionScreenStateCopyWith(_QuestionScreenState value, $Res Function(_QuestionScreenState) _then) = __$QuestionScreenStateCopyWithImpl;
@override @useResult
$Res call({
 String questionTitle, String description, String task, String codeAnswer, int selectedChoice, List<String> choices, bool isAnswered, String feedbackResult, String feedbackAdvice, String feedbackRecommendation, String modelCode
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
@override @pragma('vm:prefer-inline') $Res call({Object? questionTitle = null,Object? description = null,Object? task = null,Object? codeAnswer = null,Object? selectedChoice = null,Object? choices = null,Object? isAnswered = null,Object? feedbackResult = null,Object? feedbackAdvice = null,Object? feedbackRecommendation = null,Object? modelCode = null,}) {
  return _then(_QuestionScreenState(
questionTitle: null == questionTitle ? _self.questionTitle : questionTitle // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,task: null == task ? _self.task : task // ignore: cast_nullable_to_non_nullable
as String,codeAnswer: null == codeAnswer ? _self.codeAnswer : codeAnswer // ignore: cast_nullable_to_non_nullable
as String,selectedChoice: null == selectedChoice ? _self.selectedChoice : selectedChoice // ignore: cast_nullable_to_non_nullable
as int,choices: null == choices ? _self._choices : choices // ignore: cast_nullable_to_non_nullable
as List<String>,isAnswered: null == isAnswered ? _self.isAnswered : isAnswered // ignore: cast_nullable_to_non_nullable
as bool,feedbackResult: null == feedbackResult ? _self.feedbackResult : feedbackResult // ignore: cast_nullable_to_non_nullable
as String,feedbackAdvice: null == feedbackAdvice ? _self.feedbackAdvice : feedbackAdvice // ignore: cast_nullable_to_non_nullable
as String,feedbackRecommendation: null == feedbackRecommendation ? _self.feedbackRecommendation : feedbackRecommendation // ignore: cast_nullable_to_non_nullable
as String,modelCode: null == modelCode ? _self.modelCode : modelCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
