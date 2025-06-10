// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../presantation/section_list/view_model/section_list_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SectionListScreenState {

 List<SectionListItem> get sections;
/// Create a copy of SectionListScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SectionListScreenStateCopyWith<SectionListScreenState> get copyWith => _$SectionListScreenStateCopyWithImpl<SectionListScreenState>(this as SectionListScreenState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SectionListScreenState&&const DeepCollectionEquality().equals(other.sections, sections));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(sections));

@override
String toString() {
  return 'SectionListScreenState(sections: $sections)';
}


}

/// @nodoc
abstract mixin class $SectionListScreenStateCopyWith<$Res>  {
  factory $SectionListScreenStateCopyWith(SectionListScreenState value, $Res Function(SectionListScreenState) _then) = _$SectionListScreenStateCopyWithImpl;
@useResult
$Res call({
 List<SectionListItem> sections
});




}
/// @nodoc
class _$SectionListScreenStateCopyWithImpl<$Res>
    implements $SectionListScreenStateCopyWith<$Res> {
  _$SectionListScreenStateCopyWithImpl(this._self, this._then);

  final SectionListScreenState _self;
  final $Res Function(SectionListScreenState) _then;

/// Create a copy of SectionListScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sections = null,}) {
  return _then(_self.copyWith(
sections: null == sections ? _self.sections : sections // ignore: cast_nullable_to_non_nullable
as List<SectionListItem>,
  ));
}

}


/// @nodoc


class _SectionListScreenState implements SectionListScreenState {
  const _SectionListScreenState({required final  List<SectionListItem> sections}): _sections = sections;
  

 final  List<SectionListItem> _sections;
@override List<SectionListItem> get sections {
  if (_sections is EqualUnmodifiableListView) return _sections;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sections);
}


/// Create a copy of SectionListScreenState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SectionListScreenStateCopyWith<_SectionListScreenState> get copyWith => __$SectionListScreenStateCopyWithImpl<_SectionListScreenState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SectionListScreenState&&const DeepCollectionEquality().equals(other._sections, _sections));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_sections));

@override
String toString() {
  return 'SectionListScreenState(sections: $sections)';
}


}

/// @nodoc
abstract mixin class _$SectionListScreenStateCopyWith<$Res> implements $SectionListScreenStateCopyWith<$Res> {
  factory _$SectionListScreenStateCopyWith(_SectionListScreenState value, $Res Function(_SectionListScreenState) _then) = __$SectionListScreenStateCopyWithImpl;
@override @useResult
$Res call({
 List<SectionListItem> sections
});




}
/// @nodoc
class __$SectionListScreenStateCopyWithImpl<$Res>
    implements _$SectionListScreenStateCopyWith<$Res> {
  __$SectionListScreenStateCopyWithImpl(this._self, this._then);

  final _SectionListScreenState _self;
  final $Res Function(_SectionListScreenState) _then;

/// Create a copy of SectionListScreenState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sections = null,}) {
  return _then(_SectionListScreenState(
sections: null == sections ? _self._sections : sections // ignore: cast_nullable_to_non_nullable
as List<SectionListItem>,
  ));
}


}

/// @nodoc
mixin _$SectionListItem {

 String get sectionTitle; String get sectionDescription;
/// Create a copy of SectionListItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SectionListItemCopyWith<SectionListItem> get copyWith => _$SectionListItemCopyWithImpl<SectionListItem>(this as SectionListItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SectionListItem&&(identical(other.sectionTitle, sectionTitle) || other.sectionTitle == sectionTitle)&&(identical(other.sectionDescription, sectionDescription) || other.sectionDescription == sectionDescription));
}


@override
int get hashCode => Object.hash(runtimeType,sectionTitle,sectionDescription);

@override
String toString() {
  return 'SectionListItem(sectionTitle: $sectionTitle, sectionDescription: $sectionDescription)';
}


}

/// @nodoc
abstract mixin class $SectionListItemCopyWith<$Res>  {
  factory $SectionListItemCopyWith(SectionListItem value, $Res Function(SectionListItem) _then) = _$SectionListItemCopyWithImpl;
@useResult
$Res call({
 String sectionTitle, String sectionDescription
});




}
/// @nodoc
class _$SectionListItemCopyWithImpl<$Res>
    implements $SectionListItemCopyWith<$Res> {
  _$SectionListItemCopyWithImpl(this._self, this._then);

  final SectionListItem _self;
  final $Res Function(SectionListItem) _then;

/// Create a copy of SectionListItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sectionTitle = null,Object? sectionDescription = null,}) {
  return _then(_self.copyWith(
sectionTitle: null == sectionTitle ? _self.sectionTitle : sectionTitle // ignore: cast_nullable_to_non_nullable
as String,sectionDescription: null == sectionDescription ? _self.sectionDescription : sectionDescription // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _SectionListItem implements SectionListItem {
  const _SectionListItem({required this.sectionTitle, required this.sectionDescription});
  

@override final  String sectionTitle;
@override final  String sectionDescription;

/// Create a copy of SectionListItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SectionListItemCopyWith<_SectionListItem> get copyWith => __$SectionListItemCopyWithImpl<_SectionListItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SectionListItem&&(identical(other.sectionTitle, sectionTitle) || other.sectionTitle == sectionTitle)&&(identical(other.sectionDescription, sectionDescription) || other.sectionDescription == sectionDescription));
}


@override
int get hashCode => Object.hash(runtimeType,sectionTitle,sectionDescription);

@override
String toString() {
  return 'SectionListItem(sectionTitle: $sectionTitle, sectionDescription: $sectionDescription)';
}


}

/// @nodoc
abstract mixin class _$SectionListItemCopyWith<$Res> implements $SectionListItemCopyWith<$Res> {
  factory _$SectionListItemCopyWith(_SectionListItem value, $Res Function(_SectionListItem) _then) = __$SectionListItemCopyWithImpl;
@override @useResult
$Res call({
 String sectionTitle, String sectionDescription
});




}
/// @nodoc
class __$SectionListItemCopyWithImpl<$Res>
    implements _$SectionListItemCopyWith<$Res> {
  __$SectionListItemCopyWithImpl(this._self, this._then);

  final _SectionListItem _self;
  final $Res Function(_SectionListItem) _then;

/// Create a copy of SectionListItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sectionTitle = null,Object? sectionDescription = null,}) {
  return _then(_SectionListItem(
sectionTitle: null == sectionTitle ? _self.sectionTitle : sectionTitle // ignore: cast_nullable_to_non_nullable
as String,sectionDescription: null == sectionDescription ? _self.sectionDescription : sectionDescription // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
