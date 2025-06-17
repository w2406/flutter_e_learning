// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../domain/dify/dify_chat_message/value_object/dify_chat_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DifyChatMessage {

 String get value;
/// Create a copy of DifyChatMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DifyChatMessageCopyWith<DifyChatMessage> get copyWith => _$DifyChatMessageCopyWithImpl<DifyChatMessage>(this as DifyChatMessage, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DifyChatMessage&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'DifyChatMessage(value: $value)';
}


}

/// @nodoc
abstract mixin class $DifyChatMessageCopyWith<$Res>  {
  factory $DifyChatMessageCopyWith(DifyChatMessage value, $Res Function(DifyChatMessage) _then) = _$DifyChatMessageCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$DifyChatMessageCopyWithImpl<$Res>
    implements $DifyChatMessageCopyWith<$Res> {
  _$DifyChatMessageCopyWithImpl(this._self, this._then);

  final DifyChatMessage _self;
  final $Res Function(DifyChatMessage) _then;

/// Create a copy of DifyChatMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _DifyChatMessage implements DifyChatMessage {
  const _DifyChatMessage({required this.value});
  

@override final  String value;

/// Create a copy of DifyChatMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DifyChatMessageCopyWith<_DifyChatMessage> get copyWith => __$DifyChatMessageCopyWithImpl<_DifyChatMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DifyChatMessage&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'DifyChatMessage(value: $value)';
}


}

/// @nodoc
abstract mixin class _$DifyChatMessageCopyWith<$Res> implements $DifyChatMessageCopyWith<$Res> {
  factory _$DifyChatMessageCopyWith(_DifyChatMessage value, $Res Function(_DifyChatMessage) _then) = __$DifyChatMessageCopyWithImpl;
@override @useResult
$Res call({
 String value
});




}
/// @nodoc
class __$DifyChatMessageCopyWithImpl<$Res>
    implements _$DifyChatMessageCopyWith<$Res> {
  __$DifyChatMessageCopyWithImpl(this._self, this._then);

  final _DifyChatMessage _self;
  final $Res Function(_DifyChatMessage) _then;

/// Create a copy of DifyChatMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_DifyChatMessage(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
