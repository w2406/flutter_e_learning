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

 String get questionTitle; String get answeredAt; bool get isCorrect;
/// Create a copy of HistoryListItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HistoryListItemCopyWith<HistoryListItem> get copyWith => _$HistoryListItemCopyWithImpl<HistoryListItem>(this as HistoryListItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryListItem&&(identical(other.questionTitle, questionTitle) || other.questionTitle == questionTitle)&&(identical(other.answeredAt, answeredAt) || other.answeredAt == answeredAt)&&(identical(other.isCorrect, isCorrect) || other.isCorrect == isCorrect));
}


@override
int get hashCode => Object.hash(runtimeType,questionTitle,answeredAt,isCorrect);

@override
String toString() {
  return 'HistoryListItem(questionTitle: $questionTitle, answeredAt: $answeredAt, isCorrect: $isCorrect)';
}


}

/// @nodoc
abstract mixin class $HistoryListItemCopyWith<$Res>  {
  factory $HistoryListItemCopyWith(HistoryListItem value, $Res Function(HistoryListItem) _then) = _$HistoryListItemCopyWithImpl;
@useResult
$Res call({
 String questionTitle, String answeredAt, bool isCorrect
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
@pragma('vm:prefer-inline') @override $Res call({Object? questionTitle = null,Object? answeredAt = null,Object? isCorrect = null,}) {
  return _then(_self.copyWith(
questionTitle: null == questionTitle ? _self.questionTitle : questionTitle // ignore: cast_nullable_to_non_nullable
as String,answeredAt: null == answeredAt ? _self.answeredAt : answeredAt // ignore: cast_nullable_to_non_nullable
as String,isCorrect: null == isCorrect ? _self.isCorrect : isCorrect // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _HistoryListItem implements HistoryListItem {
  const _HistoryListItem({required this.questionTitle, required this.answeredAt, required this.isCorrect});
  

@override final  String questionTitle;
@override final  String answeredAt;
@override final  bool isCorrect;

/// Create a copy of HistoryListItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HistoryListItemCopyWith<_HistoryListItem> get copyWith => __$HistoryListItemCopyWithImpl<_HistoryListItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HistoryListItem&&(identical(other.questionTitle, questionTitle) || other.questionTitle == questionTitle)&&(identical(other.answeredAt, answeredAt) || other.answeredAt == answeredAt)&&(identical(other.isCorrect, isCorrect) || other.isCorrect == isCorrect));
}


@override
int get hashCode => Object.hash(runtimeType,questionTitle,answeredAt,isCorrect);

@override
String toString() {
  return 'HistoryListItem(questionTitle: $questionTitle, answeredAt: $answeredAt, isCorrect: $isCorrect)';
}


}

/// @nodoc
abstract mixin class _$HistoryListItemCopyWith<$Res> implements $HistoryListItemCopyWith<$Res> {
  factory _$HistoryListItemCopyWith(_HistoryListItem value, $Res Function(_HistoryListItem) _then) = __$HistoryListItemCopyWithImpl;
@override @useResult
$Res call({
 String questionTitle, String answeredAt, bool isCorrect
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
@override @pragma('vm:prefer-inline') $Res call({Object? questionTitle = null,Object? answeredAt = null,Object? isCorrect = null,}) {
  return _then(_HistoryListItem(
questionTitle: null == questionTitle ? _self.questionTitle : questionTitle // ignore: cast_nullable_to_non_nullable
as String,answeredAt: null == answeredAt ? _self.answeredAt : answeredAt // ignore: cast_nullable_to_non_nullable
as String,isCorrect: null == isCorrect ? _self.isCorrect : isCorrect // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
