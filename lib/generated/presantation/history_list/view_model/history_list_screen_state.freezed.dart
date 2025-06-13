// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../presantation/history_list/view_model/history_list_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HistoryListScreenState {

 List<HistoryListItem> get items;
/// Create a copy of HistoryListScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HistoryListScreenStateCopyWith<HistoryListScreenState> get copyWith => _$HistoryListScreenStateCopyWithImpl<HistoryListScreenState>(this as HistoryListScreenState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryListScreenState&&const DeepCollectionEquality().equals(other.items, items));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'HistoryListScreenState(items: $items)';
}


}

/// @nodoc
abstract mixin class $HistoryListScreenStateCopyWith<$Res>  {
  factory $HistoryListScreenStateCopyWith(HistoryListScreenState value, $Res Function(HistoryListScreenState) _then) = _$HistoryListScreenStateCopyWithImpl;
@useResult
$Res call({
 List<HistoryListItem> items
});




}
/// @nodoc
class _$HistoryListScreenStateCopyWithImpl<$Res>
    implements $HistoryListScreenStateCopyWith<$Res> {
  _$HistoryListScreenStateCopyWithImpl(this._self, this._then);

  final HistoryListScreenState _self;
  final $Res Function(HistoryListScreenState) _then;

/// Create a copy of HistoryListScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<HistoryListItem>,
  ));
}

}


/// @nodoc


class _HistoryListScreenState implements HistoryListScreenState {
  const _HistoryListScreenState({required final  List<HistoryListItem> items}): _items = items;
  

 final  List<HistoryListItem> _items;
@override List<HistoryListItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of HistoryListScreenState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HistoryListScreenStateCopyWith<_HistoryListScreenState> get copyWith => __$HistoryListScreenStateCopyWithImpl<_HistoryListScreenState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HistoryListScreenState&&const DeepCollectionEquality().equals(other._items, _items));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'HistoryListScreenState(items: $items)';
}


}

/// @nodoc
abstract mixin class _$HistoryListScreenStateCopyWith<$Res> implements $HistoryListScreenStateCopyWith<$Res> {
  factory _$HistoryListScreenStateCopyWith(_HistoryListScreenState value, $Res Function(_HistoryListScreenState) _then) = __$HistoryListScreenStateCopyWithImpl;
@override @useResult
$Res call({
 List<HistoryListItem> items
});




}
/// @nodoc
class __$HistoryListScreenStateCopyWithImpl<$Res>
    implements _$HistoryListScreenStateCopyWith<$Res> {
  __$HistoryListScreenStateCopyWithImpl(this._self, this._then);

  final _HistoryListScreenState _self;
  final $Res Function(_HistoryListScreenState) _then;

/// Create a copy of HistoryListScreenState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,}) {
  return _then(_HistoryListScreenState(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<HistoryListItem>,
  ));
}


}

/// @nodoc
mixin _$HistoryListItem {

 String get historyId; String get historyTitle; String get answeredAt; bool get isCorrect;// 正解ならtrue, 不正解ならfalse
 String? get feedbackExplanation; String? get feedbackAdvice; String? get feedbackSampleCode;
/// Create a copy of HistoryListItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HistoryListItemCopyWith<HistoryListItem> get copyWith => _$HistoryListItemCopyWithImpl<HistoryListItem>(this as HistoryListItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryListItem&&(identical(other.historyId, historyId) || other.historyId == historyId)&&(identical(other.historyTitle, historyTitle) || other.historyTitle == historyTitle)&&(identical(other.answeredAt, answeredAt) || other.answeredAt == answeredAt)&&(identical(other.isCorrect, isCorrect) || other.isCorrect == isCorrect)&&(identical(other.feedbackExplanation, feedbackExplanation) || other.feedbackExplanation == feedbackExplanation)&&(identical(other.feedbackAdvice, feedbackAdvice) || other.feedbackAdvice == feedbackAdvice)&&(identical(other.feedbackSampleCode, feedbackSampleCode) || other.feedbackSampleCode == feedbackSampleCode));
}


@override
int get hashCode => Object.hash(runtimeType,historyId,historyTitle,answeredAt,isCorrect,feedbackExplanation,feedbackAdvice,feedbackSampleCode);

@override
String toString() {
  return 'HistoryListItem(historyId: $historyId, historyTitle: $historyTitle, answeredAt: $answeredAt, isCorrect: $isCorrect, feedbackExplanation: $feedbackExplanation, feedbackAdvice: $feedbackAdvice, feedbackSampleCode: $feedbackSampleCode)';
}


}

/// @nodoc
abstract mixin class $HistoryListItemCopyWith<$Res>  {
  factory $HistoryListItemCopyWith(HistoryListItem value, $Res Function(HistoryListItem) _then) = _$HistoryListItemCopyWithImpl;
@useResult
$Res call({
 String historyId, String historyTitle, String answeredAt, bool isCorrect, String? feedbackExplanation, String? feedbackAdvice, String? feedbackSampleCode
});




}
/// @nodoc
class _$HistoryListItemCopyWithImpl<$Res>
    implements $HistoryListItemCopyWith<$Res> {
  _$HistoryListItemCopyWithImpl(this._self, this._then);

  final HistoryListItem _self;
  final $Res Function(HistoryListItem) _then;

/// Create a copy of HistoryListItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? historyId = null,Object? historyTitle = null,Object? answeredAt = null,Object? isCorrect = null,Object? feedbackExplanation = freezed,Object? feedbackAdvice = freezed,Object? feedbackSampleCode = freezed,}) {
  return _then(_self.copyWith(
historyId: null == historyId ? _self.historyId : historyId // ignore: cast_nullable_to_non_nullable
as String,historyTitle: null == historyTitle ? _self.historyTitle : historyTitle // ignore: cast_nullable_to_non_nullable
as String,answeredAt: null == answeredAt ? _self.answeredAt : answeredAt // ignore: cast_nullable_to_non_nullable
as String,isCorrect: null == isCorrect ? _self.isCorrect : isCorrect // ignore: cast_nullable_to_non_nullable
as bool,feedbackExplanation: freezed == feedbackExplanation ? _self.feedbackExplanation : feedbackExplanation // ignore: cast_nullable_to_non_nullable
as String?,feedbackAdvice: freezed == feedbackAdvice ? _self.feedbackAdvice : feedbackAdvice // ignore: cast_nullable_to_non_nullable
as String?,feedbackSampleCode: freezed == feedbackSampleCode ? _self.feedbackSampleCode : feedbackSampleCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc


class _HistoryListItem implements HistoryListItem {
  const _HistoryListItem({required this.historyId, required this.historyTitle, required this.answeredAt, required this.isCorrect, this.feedbackExplanation, this.feedbackAdvice, this.feedbackSampleCode});
  

@override final  String historyId;
@override final  String historyTitle;
@override final  String answeredAt;
@override final  bool isCorrect;
// 正解ならtrue, 不正解ならfalse
@override final  String? feedbackExplanation;
@override final  String? feedbackAdvice;
@override final  String? feedbackSampleCode;

/// Create a copy of HistoryListItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HistoryListItemCopyWith<_HistoryListItem> get copyWith => __$HistoryListItemCopyWithImpl<_HistoryListItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HistoryListItem&&(identical(other.historyId, historyId) || other.historyId == historyId)&&(identical(other.historyTitle, historyTitle) || other.historyTitle == historyTitle)&&(identical(other.answeredAt, answeredAt) || other.answeredAt == answeredAt)&&(identical(other.isCorrect, isCorrect) || other.isCorrect == isCorrect)&&(identical(other.feedbackExplanation, feedbackExplanation) || other.feedbackExplanation == feedbackExplanation)&&(identical(other.feedbackAdvice, feedbackAdvice) || other.feedbackAdvice == feedbackAdvice)&&(identical(other.feedbackSampleCode, feedbackSampleCode) || other.feedbackSampleCode == feedbackSampleCode));
}


@override
int get hashCode => Object.hash(runtimeType,historyId,historyTitle,answeredAt,isCorrect,feedbackExplanation,feedbackAdvice,feedbackSampleCode);

@override
String toString() {
  return 'HistoryListItem(historyId: $historyId, historyTitle: $historyTitle, answeredAt: $answeredAt, isCorrect: $isCorrect, feedbackExplanation: $feedbackExplanation, feedbackAdvice: $feedbackAdvice, feedbackSampleCode: $feedbackSampleCode)';
}


}

/// @nodoc
abstract mixin class _$HistoryListItemCopyWith<$Res> implements $HistoryListItemCopyWith<$Res> {
  factory _$HistoryListItemCopyWith(_HistoryListItem value, $Res Function(_HistoryListItem) _then) = __$HistoryListItemCopyWithImpl;
@override @useResult
$Res call({
 String historyId, String historyTitle, String answeredAt, bool isCorrect, String? feedbackExplanation, String? feedbackAdvice, String? feedbackSampleCode
});




}
/// @nodoc
class __$HistoryListItemCopyWithImpl<$Res>
    implements _$HistoryListItemCopyWith<$Res> {
  __$HistoryListItemCopyWithImpl(this._self, this._then);

  final _HistoryListItem _self;
  final $Res Function(_HistoryListItem) _then;

/// Create a copy of HistoryListItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? historyId = null,Object? historyTitle = null,Object? answeredAt = null,Object? isCorrect = null,Object? feedbackExplanation = freezed,Object? feedbackAdvice = freezed,Object? feedbackSampleCode = freezed,}) {
  return _then(_HistoryListItem(
historyId: null == historyId ? _self.historyId : historyId // ignore: cast_nullable_to_non_nullable
as String,historyTitle: null == historyTitle ? _self.historyTitle : historyTitle // ignore: cast_nullable_to_non_nullable
as String,answeredAt: null == answeredAt ? _self.answeredAt : answeredAt // ignore: cast_nullable_to_non_nullable
as String,isCorrect: null == isCorrect ? _self.isCorrect : isCorrect // ignore: cast_nullable_to_non_nullable
as bool,feedbackExplanation: freezed == feedbackExplanation ? _self.feedbackExplanation : feedbackExplanation // ignore: cast_nullable_to_non_nullable
as String?,feedbackAdvice: freezed == feedbackAdvice ? _self.feedbackAdvice : feedbackAdvice // ignore: cast_nullable_to_non_nullable
as String?,feedbackSampleCode: freezed == feedbackSampleCode ? _self.feedbackSampleCode : feedbackSampleCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
