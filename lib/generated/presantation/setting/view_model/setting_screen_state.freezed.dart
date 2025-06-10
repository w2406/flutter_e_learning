// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../presantation/setting/view_model/setting_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SettingScreenState {

 String get apiKey; String get appVersion; bool get isFileLoaded; String? get fileName;
/// Create a copy of SettingScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingScreenStateCopyWith<SettingScreenState> get copyWith => _$SettingScreenStateCopyWithImpl<SettingScreenState>(this as SettingScreenState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingScreenState&&(identical(other.apiKey, apiKey) || other.apiKey == apiKey)&&(identical(other.appVersion, appVersion) || other.appVersion == appVersion)&&(identical(other.isFileLoaded, isFileLoaded) || other.isFileLoaded == isFileLoaded)&&(identical(other.fileName, fileName) || other.fileName == fileName));
}


@override
int get hashCode => Object.hash(runtimeType,apiKey,appVersion,isFileLoaded,fileName);

@override
String toString() {
  return 'SettingScreenState(apiKey: $apiKey, appVersion: $appVersion, isFileLoaded: $isFileLoaded, fileName: $fileName)';
}


}

/// @nodoc
abstract mixin class $SettingScreenStateCopyWith<$Res>  {
  factory $SettingScreenStateCopyWith(SettingScreenState value, $Res Function(SettingScreenState) _then) = _$SettingScreenStateCopyWithImpl;
@useResult
$Res call({
 String apiKey, String appVersion, bool isFileLoaded, String? fileName
});




}
/// @nodoc
class _$SettingScreenStateCopyWithImpl<$Res>
    implements $SettingScreenStateCopyWith<$Res> {
  _$SettingScreenStateCopyWithImpl(this._self, this._then);

  final SettingScreenState _self;
  final $Res Function(SettingScreenState) _then;

/// Create a copy of SettingScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? apiKey = null,Object? appVersion = null,Object? isFileLoaded = null,Object? fileName = freezed,}) {
  return _then(_self.copyWith(
apiKey: null == apiKey ? _self.apiKey : apiKey // ignore: cast_nullable_to_non_nullable
as String,appVersion: null == appVersion ? _self.appVersion : appVersion // ignore: cast_nullable_to_non_nullable
as String,isFileLoaded: null == isFileLoaded ? _self.isFileLoaded : isFileLoaded // ignore: cast_nullable_to_non_nullable
as bool,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc


class _SettingScreenState implements SettingScreenState {
  const _SettingScreenState({required this.apiKey, required this.appVersion, required this.isFileLoaded, this.fileName});
  

@override final  String apiKey;
@override final  String appVersion;
@override final  bool isFileLoaded;
@override final  String? fileName;

/// Create a copy of SettingScreenState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingScreenStateCopyWith<_SettingScreenState> get copyWith => __$SettingScreenStateCopyWithImpl<_SettingScreenState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettingScreenState&&(identical(other.apiKey, apiKey) || other.apiKey == apiKey)&&(identical(other.appVersion, appVersion) || other.appVersion == appVersion)&&(identical(other.isFileLoaded, isFileLoaded) || other.isFileLoaded == isFileLoaded)&&(identical(other.fileName, fileName) || other.fileName == fileName));
}


@override
int get hashCode => Object.hash(runtimeType,apiKey,appVersion,isFileLoaded,fileName);

@override
String toString() {
  return 'SettingScreenState(apiKey: $apiKey, appVersion: $appVersion, isFileLoaded: $isFileLoaded, fileName: $fileName)';
}


}

/// @nodoc
abstract mixin class _$SettingScreenStateCopyWith<$Res> implements $SettingScreenStateCopyWith<$Res> {
  factory _$SettingScreenStateCopyWith(_SettingScreenState value, $Res Function(_SettingScreenState) _then) = __$SettingScreenStateCopyWithImpl;
@override @useResult
$Res call({
 String apiKey, String appVersion, bool isFileLoaded, String? fileName
});




}
/// @nodoc
class __$SettingScreenStateCopyWithImpl<$Res>
    implements _$SettingScreenStateCopyWith<$Res> {
  __$SettingScreenStateCopyWithImpl(this._self, this._then);

  final _SettingScreenState _self;
  final $Res Function(_SettingScreenState) _then;

/// Create a copy of SettingScreenState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? apiKey = null,Object? appVersion = null,Object? isFileLoaded = null,Object? fileName = freezed,}) {
  return _then(_SettingScreenState(
apiKey: null == apiKey ? _self.apiKey : apiKey // ignore: cast_nullable_to_non_nullable
as String,appVersion: null == appVersion ? _self.appVersion : appVersion // ignore: cast_nullable_to_non_nullable
as String,isFileLoaded: null == isFileLoaded ? _self.isFileLoaded : isFileLoaded // ignore: cast_nullable_to_non_nullable
as bool,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
