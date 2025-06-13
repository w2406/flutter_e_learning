// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../domain/history/history/entity/history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$History {

 String get id; String get historyTitle; String get historyContent; Answer get answer; bool get isCorrect; Feedback get feedback; DateTime get answeredAt;
/// Create a copy of History
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HistoryCopyWith<History> get copyWith => _$HistoryCopyWithImpl<History>(this as History, _$identity);

  /// Serializes this History to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is History&&(identical(other.id, id) || other.id == id)&&(identical(other.historyTitle, historyTitle) || other.historyTitle == historyTitle)&&(identical(other.historyContent, historyContent) || other.historyContent == historyContent)&&(identical(other.answer, answer) || other.answer == answer)&&(identical(other.isCorrect, isCorrect) || other.isCorrect == isCorrect)&&(identical(other.feedback, feedback) || other.feedback == feedback)&&(identical(other.answeredAt, answeredAt) || other.answeredAt == answeredAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,historyTitle,historyContent,answer,isCorrect,feedback,answeredAt);

@override
String toString() {
  return 'History(id: $id, historyTitle: $historyTitle, historyContent: $historyContent, answer: $answer, isCorrect: $isCorrect, feedback: $feedback, answeredAt: $answeredAt)';
}


}

/// @nodoc
abstract mixin class $HistoryCopyWith<$Res>  {
  factory $HistoryCopyWith(History value, $Res Function(History) _then) = _$HistoryCopyWithImpl;
@useResult
$Res call({
 String id, String historyTitle, String historyContent, Answer answer, bool isCorrect, Feedback feedback, DateTime answeredAt
});


$AnswerCopyWith<$Res> get answer;$FeedbackCopyWith<$Res> get feedback;

}
/// @nodoc
class _$HistoryCopyWithImpl<$Res>
    implements $HistoryCopyWith<$Res> {
  _$HistoryCopyWithImpl(this._self, this._then);

  final History _self;
  final $Res Function(History) _then;

/// Create a copy of History
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? historyTitle = null,Object? historyContent = null,Object? answer = null,Object? isCorrect = null,Object? feedback = null,Object? answeredAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,historyTitle: null == historyTitle ? _self.historyTitle : historyTitle // ignore: cast_nullable_to_non_nullable
as String,historyContent: null == historyContent ? _self.historyContent : historyContent // ignore: cast_nullable_to_non_nullable
as String,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as Answer,isCorrect: null == isCorrect ? _self.isCorrect : isCorrect // ignore: cast_nullable_to_non_nullable
as bool,feedback: null == feedback ? _self.feedback : feedback // ignore: cast_nullable_to_non_nullable
as Feedback,answeredAt: null == answeredAt ? _self.answeredAt : answeredAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of History
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnswerCopyWith<$Res> get answer {
  
  return $AnswerCopyWith<$Res>(_self.answer, (value) {
    return _then(_self.copyWith(answer: value));
  });
}/// Create a copy of History
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeedbackCopyWith<$Res> get feedback {
  
  return $FeedbackCopyWith<$Res>(_self.feedback, (value) {
    return _then(_self.copyWith(feedback: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _History implements History {
  const _History({required this.id, required this.historyTitle, required this.historyContent, required this.answer, required this.isCorrect, required this.feedback, required this.answeredAt});
  factory _History.fromJson(Map<String, dynamic> json) => _$HistoryFromJson(json);

@override final  String id;
@override final  String historyTitle;
@override final  String historyContent;
@override final  Answer answer;
@override final  bool isCorrect;
@override final  Feedback feedback;
@override final  DateTime answeredAt;

/// Create a copy of History
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HistoryCopyWith<_History> get copyWith => __$HistoryCopyWithImpl<_History>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HistoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _History&&(identical(other.id, id) || other.id == id)&&(identical(other.historyTitle, historyTitle) || other.historyTitle == historyTitle)&&(identical(other.historyContent, historyContent) || other.historyContent == historyContent)&&(identical(other.answer, answer) || other.answer == answer)&&(identical(other.isCorrect, isCorrect) || other.isCorrect == isCorrect)&&(identical(other.feedback, feedback) || other.feedback == feedback)&&(identical(other.answeredAt, answeredAt) || other.answeredAt == answeredAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,historyTitle,historyContent,answer,isCorrect,feedback,answeredAt);

@override
String toString() {
  return 'History(id: $id, historyTitle: $historyTitle, historyContent: $historyContent, answer: $answer, isCorrect: $isCorrect, feedback: $feedback, answeredAt: $answeredAt)';
}


}

/// @nodoc
abstract mixin class _$HistoryCopyWith<$Res> implements $HistoryCopyWith<$Res> {
  factory _$HistoryCopyWith(_History value, $Res Function(_History) _then) = __$HistoryCopyWithImpl;
@override @useResult
$Res call({
 String id, String historyTitle, String historyContent, Answer answer, bool isCorrect, Feedback feedback, DateTime answeredAt
});


@override $AnswerCopyWith<$Res> get answer;@override $FeedbackCopyWith<$Res> get feedback;

}
/// @nodoc
class __$HistoryCopyWithImpl<$Res>
    implements _$HistoryCopyWith<$Res> {
  __$HistoryCopyWithImpl(this._self, this._then);

  final _History _self;
  final $Res Function(_History) _then;

/// Create a copy of History
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? historyTitle = null,Object? historyContent = null,Object? answer = null,Object? isCorrect = null,Object? feedback = null,Object? answeredAt = null,}) {
  return _then(_History(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,historyTitle: null == historyTitle ? _self.historyTitle : historyTitle // ignore: cast_nullable_to_non_nullable
as String,historyContent: null == historyContent ? _self.historyContent : historyContent // ignore: cast_nullable_to_non_nullable
as String,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as Answer,isCorrect: null == isCorrect ? _self.isCorrect : isCorrect // ignore: cast_nullable_to_non_nullable
as bool,feedback: null == feedback ? _self.feedback : feedback // ignore: cast_nullable_to_non_nullable
as Feedback,answeredAt: null == answeredAt ? _self.answeredAt : answeredAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of History
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnswerCopyWith<$Res> get answer {
  
  return $AnswerCopyWith<$Res>(_self.answer, (value) {
    return _then(_self.copyWith(answer: value));
  });
}/// Create a copy of History
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeedbackCopyWith<$Res> get feedback {
  
  return $FeedbackCopyWith<$Res>(_self.feedback, (value) {
    return _then(_self.copyWith(feedback: value));
  });
}
}

// dart format on
