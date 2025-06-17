// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../../infrastructure/data/remote/model/dify_chat/dify_chat_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DifyChatRequest {

 String get query; String get user; String? get conversation_id; Map<String, dynamic>? get inputs; String? get response_mode; List<Map<String, dynamic>>? get files; bool? get auto_generate_name;
/// Create a copy of DifyChatRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DifyChatRequestCopyWith<DifyChatRequest> get copyWith => _$DifyChatRequestCopyWithImpl<DifyChatRequest>(this as DifyChatRequest, _$identity);

  /// Serializes this DifyChatRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DifyChatRequest&&(identical(other.query, query) || other.query == query)&&(identical(other.user, user) || other.user == user)&&(identical(other.conversation_id, conversation_id) || other.conversation_id == conversation_id)&&const DeepCollectionEquality().equals(other.inputs, inputs)&&(identical(other.response_mode, response_mode) || other.response_mode == response_mode)&&const DeepCollectionEquality().equals(other.files, files)&&(identical(other.auto_generate_name, auto_generate_name) || other.auto_generate_name == auto_generate_name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query,user,conversation_id,const DeepCollectionEquality().hash(inputs),response_mode,const DeepCollectionEquality().hash(files),auto_generate_name);

@override
String toString() {
  return 'DifyChatRequest(query: $query, user: $user, conversation_id: $conversation_id, inputs: $inputs, response_mode: $response_mode, files: $files, auto_generate_name: $auto_generate_name)';
}


}

/// @nodoc
abstract mixin class $DifyChatRequestCopyWith<$Res>  {
  factory $DifyChatRequestCopyWith(DifyChatRequest value, $Res Function(DifyChatRequest) _then) = _$DifyChatRequestCopyWithImpl;
@useResult
$Res call({
 String query, String user, String? conversation_id, Map<String, dynamic>? inputs, String? response_mode, List<Map<String, dynamic>>? files, bool? auto_generate_name
});




}
/// @nodoc
class _$DifyChatRequestCopyWithImpl<$Res>
    implements $DifyChatRequestCopyWith<$Res> {
  _$DifyChatRequestCopyWithImpl(this._self, this._then);

  final DifyChatRequest _self;
  final $Res Function(DifyChatRequest) _then;

/// Create a copy of DifyChatRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? user = null,Object? conversation_id = freezed,Object? inputs = freezed,Object? response_mode = freezed,Object? files = freezed,Object? auto_generate_name = freezed,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String,conversation_id: freezed == conversation_id ? _self.conversation_id : conversation_id // ignore: cast_nullable_to_non_nullable
as String?,inputs: freezed == inputs ? _self.inputs : inputs // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,response_mode: freezed == response_mode ? _self.response_mode : response_mode // ignore: cast_nullable_to_non_nullable
as String?,files: freezed == files ? _self.files : files // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,auto_generate_name: freezed == auto_generate_name ? _self.auto_generate_name : auto_generate_name // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _DifyChatRequest implements DifyChatRequest {
  const _DifyChatRequest({required this.query, required this.user, this.conversation_id, final  Map<String, dynamic>? inputs, this.response_mode, final  List<Map<String, dynamic>>? files, this.auto_generate_name}): _inputs = inputs,_files = files;
  factory _DifyChatRequest.fromJson(Map<String, dynamic> json) => _$DifyChatRequestFromJson(json);

@override final  String query;
@override final  String user;
@override final  String? conversation_id;
 final  Map<String, dynamic>? _inputs;
@override Map<String, dynamic>? get inputs {
  final value = _inputs;
  if (value == null) return null;
  if (_inputs is EqualUnmodifiableMapView) return _inputs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  String? response_mode;
 final  List<Map<String, dynamic>>? _files;
@override List<Map<String, dynamic>>? get files {
  final value = _files;
  if (value == null) return null;
  if (_files is EqualUnmodifiableListView) return _files;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  bool? auto_generate_name;

/// Create a copy of DifyChatRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DifyChatRequestCopyWith<_DifyChatRequest> get copyWith => __$DifyChatRequestCopyWithImpl<_DifyChatRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DifyChatRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DifyChatRequest&&(identical(other.query, query) || other.query == query)&&(identical(other.user, user) || other.user == user)&&(identical(other.conversation_id, conversation_id) || other.conversation_id == conversation_id)&&const DeepCollectionEquality().equals(other._inputs, _inputs)&&(identical(other.response_mode, response_mode) || other.response_mode == response_mode)&&const DeepCollectionEquality().equals(other._files, _files)&&(identical(other.auto_generate_name, auto_generate_name) || other.auto_generate_name == auto_generate_name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query,user,conversation_id,const DeepCollectionEquality().hash(_inputs),response_mode,const DeepCollectionEquality().hash(_files),auto_generate_name);

@override
String toString() {
  return 'DifyChatRequest(query: $query, user: $user, conversation_id: $conversation_id, inputs: $inputs, response_mode: $response_mode, files: $files, auto_generate_name: $auto_generate_name)';
}


}

/// @nodoc
abstract mixin class _$DifyChatRequestCopyWith<$Res> implements $DifyChatRequestCopyWith<$Res> {
  factory _$DifyChatRequestCopyWith(_DifyChatRequest value, $Res Function(_DifyChatRequest) _then) = __$DifyChatRequestCopyWithImpl;
@override @useResult
$Res call({
 String query, String user, String? conversation_id, Map<String, dynamic>? inputs, String? response_mode, List<Map<String, dynamic>>? files, bool? auto_generate_name
});




}
/// @nodoc
class __$DifyChatRequestCopyWithImpl<$Res>
    implements _$DifyChatRequestCopyWith<$Res> {
  __$DifyChatRequestCopyWithImpl(this._self, this._then);

  final _DifyChatRequest _self;
  final $Res Function(_DifyChatRequest) _then;

/// Create a copy of DifyChatRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? user = null,Object? conversation_id = freezed,Object? inputs = freezed,Object? response_mode = freezed,Object? files = freezed,Object? auto_generate_name = freezed,}) {
  return _then(_DifyChatRequest(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String,conversation_id: freezed == conversation_id ? _self.conversation_id : conversation_id // ignore: cast_nullable_to_non_nullable
as String?,inputs: freezed == inputs ? _self._inputs : inputs // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,response_mode: freezed == response_mode ? _self.response_mode : response_mode // ignore: cast_nullable_to_non_nullable
as String?,files: freezed == files ? _self._files : files // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,auto_generate_name: freezed == auto_generate_name ? _self.auto_generate_name : auto_generate_name // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
