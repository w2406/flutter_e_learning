// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../domain/setting/question/value_object/id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Id {

 String get value;
/// Create a copy of Id
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IdCopyWith<Id> get copyWith => _$IdCopyWithImpl<Id>(this as Id, _$identity);

  /// Serializes this Id to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Id&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'Id(value: $value)';
}


}

/// @nodoc
abstract mixin class $IdCopyWith<$Res>  {
  factory $IdCopyWith(Id value, $Res Function(Id) _then) = _$IdCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$IdCopyWithImpl<$Res>
    implements $IdCopyWith<$Res> {
  _$IdCopyWithImpl(this._self, this._then);

  final Id _self;
  final $Res Function(Id) _then;

/// Create a copy of Id
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Id implements Id {
  const _Id({required this.value});
  factory _Id.fromJson(Map<String, dynamic> json) => _$IdFromJson(json);

@override final  String value;

/// Create a copy of Id
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IdCopyWith<_Id> get copyWith => __$IdCopyWithImpl<_Id>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IdToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Id&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'Id(value: $value)';
}


}

/// @nodoc
abstract mixin class _$IdCopyWith<$Res> implements $IdCopyWith<$Res> {
  factory _$IdCopyWith(_Id value, $Res Function(_Id) _then) = __$IdCopyWithImpl;
@override @useResult
$Res call({
 String value
});




}
/// @nodoc
class __$IdCopyWithImpl<$Res>
    implements _$IdCopyWith<$Res> {
  __$IdCopyWithImpl(this._self, this._then);

  final _Id _self;
  final $Res Function(_Id) _then;

/// Create a copy of Id
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Id(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
