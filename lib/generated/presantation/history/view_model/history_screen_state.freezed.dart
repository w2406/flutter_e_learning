// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../presantation/history/view_model/history_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HistoryScreenState {

 String get historyTitle; String get historyContent; String? get answerCode; int? get answerChoiceIndex; String get feedbackResult; String get feedbackExplanation; String get feedbackAdvice; String get feedbackSampleCode; List<({int id, String label, bool isCorrect})> get choices;
/// Create a copy of HistoryScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HistoryScreenStateCopyWith<HistoryScreenState> get copyWith => _$HistoryScreenStateCopyWithImpl<HistoryScreenState>(this as HistoryScreenState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryScreenState&&(identical(other.historyTitle, historyTitle) || other.historyTitle == historyTitle)&&(identical(other.historyContent, historyContent) || other.historyContent == historyContent)&&(identical(other.answerCode, answerCode) || other.answerCode == answerCode)&&(identical(other.answerChoiceIndex, answerChoiceIndex) || other.answerChoiceIndex == answerChoiceIndex)&&(identical(other.feedbackResult, feedbackResult) || other.feedbackResult == feedbackResult)&&(identical(other.feedbackExplanation, feedbackExplanation) || other.feedbackExplanation == feedbackExplanation)&&(identical(other.feedbackAdvice, feedbackAdvice) || other.feedbackAdvice == feedbackAdvice)&&(identical(other.feedbackSampleCode, feedbackSampleCode) || other.feedbackSampleCode == feedbackSampleCode)&&const DeepCollectionEquality().equals(other.choices, choices));
}


@override
int get hashCode => Object.hash(runtimeType,historyTitle,historyContent,answerCode,answerChoiceIndex,feedbackResult,feedbackExplanation,feedbackAdvice,feedbackSampleCode,const DeepCollectionEquality().hash(choices));

@override
String toString() {
  return 'HistoryScreenState(historyTitle: $historyTitle, historyContent: $historyContent, answerCode: $answerCode, answerChoiceIndex: $answerChoiceIndex, feedbackResult: $feedbackResult, feedbackExplanation: $feedbackExplanation, feedbackAdvice: $feedbackAdvice, feedbackSampleCode: $feedbackSampleCode, choices: $choices)';
}


}

/// @nodoc
abstract mixin class $HistoryScreenStateCopyWith<$Res>  {
  factory $HistoryScreenStateCopyWith(HistoryScreenState value, $Res Function(HistoryScreenState) _then) = _$HistoryScreenStateCopyWithImpl;
@useResult
$Res call({
 String historyTitle, String historyContent, String? answerCode, int? answerChoiceIndex, String feedbackResult, String feedbackExplanation, String feedbackAdvice, String feedbackSampleCode, List<({int id, String label, bool isCorrect})> choices
});




}
/// @nodoc
class _$HistoryScreenStateCopyWithImpl<$Res>
    implements $HistoryScreenStateCopyWith<$Res> {
  _$HistoryScreenStateCopyWithImpl(this._self, this._then);

  final HistoryScreenState _self;
  final $Res Function(HistoryScreenState) _then;

/// Create a copy of HistoryScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? historyTitle = null,Object? historyContent = null,Object? answerCode = freezed,Object? answerChoiceIndex = freezed,Object? feedbackResult = null,Object? feedbackExplanation = null,Object? feedbackAdvice = null,Object? feedbackSampleCode = null,Object? choices = null,}) {
  return _then(_self.copyWith(
historyTitle: null == historyTitle ? _self.historyTitle : historyTitle // ignore: cast_nullable_to_non_nullable
as String,historyContent: null == historyContent ? _self.historyContent : historyContent // ignore: cast_nullable_to_non_nullable
as String,answerCode: freezed == answerCode ? _self.answerCode : answerCode // ignore: cast_nullable_to_non_nullable
as String?,answerChoiceIndex: freezed == answerChoiceIndex ? _self.answerChoiceIndex : answerChoiceIndex // ignore: cast_nullable_to_non_nullable
as int?,feedbackResult: null == feedbackResult ? _self.feedbackResult : feedbackResult // ignore: cast_nullable_to_non_nullable
as String,feedbackExplanation: null == feedbackExplanation ? _self.feedbackExplanation : feedbackExplanation // ignore: cast_nullable_to_non_nullable
as String,feedbackAdvice: null == feedbackAdvice ? _self.feedbackAdvice : feedbackAdvice // ignore: cast_nullable_to_non_nullable
as String,feedbackSampleCode: null == feedbackSampleCode ? _self.feedbackSampleCode : feedbackSampleCode // ignore: cast_nullable_to_non_nullable
as String,choices: null == choices ? _self.choices : choices // ignore: cast_nullable_to_non_nullable
as List<({int id, String label, bool isCorrect})>,
  ));
}

}


/// @nodoc


class _HistoryScreenState implements HistoryScreenState {
  const _HistoryScreenState({required this.historyTitle, required this.historyContent, this.answerCode, this.answerChoiceIndex, required this.feedbackResult, required this.feedbackExplanation, required this.feedbackAdvice, required this.feedbackSampleCode, final  List<({int id, String label, bool isCorrect})> choices = const []}): _choices = choices;
  

@override final  String historyTitle;
@override final  String historyContent;
@override final  String? answerCode;
@override final  int? answerChoiceIndex;
@override final  String feedbackResult;
@override final  String feedbackExplanation;
@override final  String feedbackAdvice;
@override final  String feedbackSampleCode;
 final  List<({int id, String label, bool isCorrect})> _choices;
@override@JsonKey() List<({int id, String label, bool isCorrect})> get choices {
  if (_choices is EqualUnmodifiableListView) return _choices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_choices);
}


/// Create a copy of HistoryScreenState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HistoryScreenStateCopyWith<_HistoryScreenState> get copyWith => __$HistoryScreenStateCopyWithImpl<_HistoryScreenState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HistoryScreenState&&(identical(other.historyTitle, historyTitle) || other.historyTitle == historyTitle)&&(identical(other.historyContent, historyContent) || other.historyContent == historyContent)&&(identical(other.answerCode, answerCode) || other.answerCode == answerCode)&&(identical(other.answerChoiceIndex, answerChoiceIndex) || other.answerChoiceIndex == answerChoiceIndex)&&(identical(other.feedbackResult, feedbackResult) || other.feedbackResult == feedbackResult)&&(identical(other.feedbackExplanation, feedbackExplanation) || other.feedbackExplanation == feedbackExplanation)&&(identical(other.feedbackAdvice, feedbackAdvice) || other.feedbackAdvice == feedbackAdvice)&&(identical(other.feedbackSampleCode, feedbackSampleCode) || other.feedbackSampleCode == feedbackSampleCode)&&const DeepCollectionEquality().equals(other._choices, _choices));
}


@override
int get hashCode => Object.hash(runtimeType,historyTitle,historyContent,answerCode,answerChoiceIndex,feedbackResult,feedbackExplanation,feedbackAdvice,feedbackSampleCode,const DeepCollectionEquality().hash(_choices));

@override
String toString() {
  return 'HistoryScreenState(historyTitle: $historyTitle, historyContent: $historyContent, answerCode: $answerCode, answerChoiceIndex: $answerChoiceIndex, feedbackResult: $feedbackResult, feedbackExplanation: $feedbackExplanation, feedbackAdvice: $feedbackAdvice, feedbackSampleCode: $feedbackSampleCode, choices: $choices)';
}


}

/// @nodoc
abstract mixin class _$HistoryScreenStateCopyWith<$Res> implements $HistoryScreenStateCopyWith<$Res> {
  factory _$HistoryScreenStateCopyWith(_HistoryScreenState value, $Res Function(_HistoryScreenState) _then) = __$HistoryScreenStateCopyWithImpl;
@override @useResult
$Res call({
 String historyTitle, String historyContent, String? answerCode, int? answerChoiceIndex, String feedbackResult, String feedbackExplanation, String feedbackAdvice, String feedbackSampleCode, List<({int id, String label, bool isCorrect})> choices
});




}
/// @nodoc
class __$HistoryScreenStateCopyWithImpl<$Res>
    implements _$HistoryScreenStateCopyWith<$Res> {
  __$HistoryScreenStateCopyWithImpl(this._self, this._then);

  final _HistoryScreenState _self;
  final $Res Function(_HistoryScreenState) _then;

/// Create a copy of HistoryScreenState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? historyTitle = null,Object? historyContent = null,Object? answerCode = freezed,Object? answerChoiceIndex = freezed,Object? feedbackResult = null,Object? feedbackExplanation = null,Object? feedbackAdvice = null,Object? feedbackSampleCode = null,Object? choices = null,}) {
  return _then(_HistoryScreenState(
historyTitle: null == historyTitle ? _self.historyTitle : historyTitle // ignore: cast_nullable_to_non_nullable
as String,historyContent: null == historyContent ? _self.historyContent : historyContent // ignore: cast_nullable_to_non_nullable
as String,answerCode: freezed == answerCode ? _self.answerCode : answerCode // ignore: cast_nullable_to_non_nullable
as String?,answerChoiceIndex: freezed == answerChoiceIndex ? _self.answerChoiceIndex : answerChoiceIndex // ignore: cast_nullable_to_non_nullable
as int?,feedbackResult: null == feedbackResult ? _self.feedbackResult : feedbackResult // ignore: cast_nullable_to_non_nullable
as String,feedbackExplanation: null == feedbackExplanation ? _self.feedbackExplanation : feedbackExplanation // ignore: cast_nullable_to_non_nullable
as String,feedbackAdvice: null == feedbackAdvice ? _self.feedbackAdvice : feedbackAdvice // ignore: cast_nullable_to_non_nullable
as String,feedbackSampleCode: null == feedbackSampleCode ? _self.feedbackSampleCode : feedbackSampleCode // ignore: cast_nullable_to_non_nullable
as String,choices: null == choices ? _self._choices : choices // ignore: cast_nullable_to_non_nullable
as List<({int id, String label, bool isCorrect})>,
  ));
}


}

// dart format on
