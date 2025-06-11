// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../domain/setting/question/entity/choices.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Choices {

 List<Choice> get values;
/// Create a copy of Choices
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChoicesCopyWith<Choices> get copyWith => _$ChoicesCopyWithImpl<Choices>(this as Choices, _$identity);

  /// Serializes this Choices to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Choices&&const DeepCollectionEquality().equals(other.values, values));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(values));

@override
String toString() {
  return 'Choices(values: $values)';
}


}

/// @nodoc
abstract mixin class $ChoicesCopyWith<$Res>  {
  factory $ChoicesCopyWith(Choices value, $Res Function(Choices) _then) = _$ChoicesCopyWithImpl;
@useResult
$Res call({
 List<Choice> values
});




}
/// @nodoc
class _$ChoicesCopyWithImpl<$Res>
    implements $ChoicesCopyWith<$Res> {
  _$ChoicesCopyWithImpl(this._self, this._then);

  final Choices _self;
  final $Res Function(Choices) _then;

/// Create a copy of Choices
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? values = null,}) {
  return _then(_self.copyWith(
values: null == values ? _self.values : values // ignore: cast_nullable_to_non_nullable
as List<Choice>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Choices implements Choices {
  const _Choices({required final  List<Choice> values}): _values = values;
  factory _Choices.fromJson(Map<String, dynamic> json) => _$ChoicesFromJson(json);

 final  List<Choice> _values;
@override List<Choice> get values {
  if (_values is EqualUnmodifiableListView) return _values;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_values);
}


/// Create a copy of Choices
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChoicesCopyWith<_Choices> get copyWith => __$ChoicesCopyWithImpl<_Choices>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChoicesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Choices&&const DeepCollectionEquality().equals(other._values, _values));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_values));

@override
String toString() {
  return 'Choices(values: $values)';
}


}

/// @nodoc
abstract mixin class _$ChoicesCopyWith<$Res> implements $ChoicesCopyWith<$Res> {
  factory _$ChoicesCopyWith(_Choices value, $Res Function(_Choices) _then) = __$ChoicesCopyWithImpl;
@override @useResult
$Res call({
 List<Choice> values
});




}
/// @nodoc
class __$ChoicesCopyWithImpl<$Res>
    implements _$ChoicesCopyWith<$Res> {
  __$ChoicesCopyWithImpl(this._self, this._then);

  final _Choices _self;
  final $Res Function(_Choices) _then;

/// Create a copy of Choices
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? values = null,}) {
  return _then(_Choices(
values: null == values ? _self._values : values // ignore: cast_nullable_to_non_nullable
as List<Choice>,
  ));
}


}

// dart format on
