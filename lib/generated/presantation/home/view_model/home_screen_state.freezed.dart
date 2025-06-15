// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../presantation/home/view_model/home_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeScreenState {

 double get progress;
/// Create a copy of HomeScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeScreenStateCopyWith<HomeScreenState> get copyWith => _$HomeScreenStateCopyWithImpl<HomeScreenState>(this as HomeScreenState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeScreenState&&(identical(other.progress, progress) || other.progress == progress));
}


@override
int get hashCode => Object.hash(runtimeType,progress);

@override
String toString() {
  return 'HomeScreenState(progress: $progress)';
}


}

/// @nodoc
abstract mixin class $HomeScreenStateCopyWith<$Res>  {
  factory $HomeScreenStateCopyWith(HomeScreenState value, $Res Function(HomeScreenState) _then) = _$HomeScreenStateCopyWithImpl;
@useResult
$Res call({
 double progress
});




}
/// @nodoc
class _$HomeScreenStateCopyWithImpl<$Res>
    implements $HomeScreenStateCopyWith<$Res> {
  _$HomeScreenStateCopyWithImpl(this._self, this._then);

  final HomeScreenState _self;
  final $Res Function(HomeScreenState) _then;

/// Create a copy of HomeScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? progress = null,}) {
  return _then(_self.copyWith(
progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// @nodoc


class _HomeScreenState implements HomeScreenState {
  const _HomeScreenState({required this.progress});
  

@override final  double progress;

/// Create a copy of HomeScreenState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeScreenStateCopyWith<_HomeScreenState> get copyWith => __$HomeScreenStateCopyWithImpl<_HomeScreenState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeScreenState&&(identical(other.progress, progress) || other.progress == progress));
}


@override
int get hashCode => Object.hash(runtimeType,progress);

@override
String toString() {
  return 'HomeScreenState(progress: $progress)';
}


}

/// @nodoc
abstract mixin class _$HomeScreenStateCopyWith<$Res> implements $HomeScreenStateCopyWith<$Res> {
  factory _$HomeScreenStateCopyWith(_HomeScreenState value, $Res Function(_HomeScreenState) _then) = __$HomeScreenStateCopyWithImpl;
@override @useResult
$Res call({
 double progress
});




}
/// @nodoc
class __$HomeScreenStateCopyWithImpl<$Res>
    implements _$HomeScreenStateCopyWith<$Res> {
  __$HomeScreenStateCopyWithImpl(this._self, this._then);

  final _HomeScreenState _self;
  final $Res Function(_HomeScreenState) _then;

/// Create a copy of HomeScreenState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? progress = null,}) {
  return _then(_HomeScreenState(
progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
