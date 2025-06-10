// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../presantation/section/view_model/section_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SectionScreenState {

 String get sectionTitle; List<SectionQuestionItem> get questions;
/// Create a copy of SectionScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SectionScreenStateCopyWith<SectionScreenState> get copyWith => _$SectionScreenStateCopyWithImpl<SectionScreenState>(this as SectionScreenState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SectionScreenState&&(identical(other.sectionTitle, sectionTitle) || other.sectionTitle == sectionTitle)&&const DeepCollectionEquality().equals(other.questions, questions));
}


@override
int get hashCode => Object.hash(runtimeType,sectionTitle,const DeepCollectionEquality().hash(questions));

@override
String toString() {
  return 'SectionScreenState(sectionTitle: $sectionTitle, questions: $questions)';
}


}

/// @nodoc
abstract mixin class $SectionScreenStateCopyWith<$Res>  {
  factory $SectionScreenStateCopyWith(SectionScreenState value, $Res Function(SectionScreenState) _then) = _$SectionScreenStateCopyWithImpl;
@useResult
$Res call({
 String sectionTitle, List<SectionQuestionItem> questions
});




}
/// @nodoc
class _$SectionScreenStateCopyWithImpl<$Res>
    implements $SectionScreenStateCopyWith<$Res> {
  _$SectionScreenStateCopyWithImpl(this._self, this._then);

  final SectionScreenState _self;
  final $Res Function(SectionScreenState) _then;

/// Create a copy of SectionScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sectionTitle = null,Object? questions = null,}) {
  return _then(_self.copyWith(
sectionTitle: null == sectionTitle ? _self.sectionTitle : sectionTitle // ignore: cast_nullable_to_non_nullable
as String,questions: null == questions ? _self.questions : questions // ignore: cast_nullable_to_non_nullable
as List<SectionQuestionItem>,
  ));
}

}


/// @nodoc


class _SectionScreenState implements SectionScreenState {
  const _SectionScreenState({required this.sectionTitle, required final  List<SectionQuestionItem> questions}): _questions = questions;
  

@override final  String sectionTitle;
 final  List<SectionQuestionItem> _questions;
@override List<SectionQuestionItem> get questions {
  if (_questions is EqualUnmodifiableListView) return _questions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_questions);
}


/// Create a copy of SectionScreenState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SectionScreenStateCopyWith<_SectionScreenState> get copyWith => __$SectionScreenStateCopyWithImpl<_SectionScreenState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SectionScreenState&&(identical(other.sectionTitle, sectionTitle) || other.sectionTitle == sectionTitle)&&const DeepCollectionEquality().equals(other._questions, _questions));
}


@override
int get hashCode => Object.hash(runtimeType,sectionTitle,const DeepCollectionEquality().hash(_questions));

@override
String toString() {
  return 'SectionScreenState(sectionTitle: $sectionTitle, questions: $questions)';
}


}

/// @nodoc
abstract mixin class _$SectionScreenStateCopyWith<$Res> implements $SectionScreenStateCopyWith<$Res> {
  factory _$SectionScreenStateCopyWith(_SectionScreenState value, $Res Function(_SectionScreenState) _then) = __$SectionScreenStateCopyWithImpl;
@override @useResult
$Res call({
 String sectionTitle, List<SectionQuestionItem> questions
});




}
/// @nodoc
class __$SectionScreenStateCopyWithImpl<$Res>
    implements _$SectionScreenStateCopyWith<$Res> {
  __$SectionScreenStateCopyWithImpl(this._self, this._then);

  final _SectionScreenState _self;
  final $Res Function(_SectionScreenState) _then;

/// Create a copy of SectionScreenState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sectionTitle = null,Object? questions = null,}) {
  return _then(_SectionScreenState(
sectionTitle: null == sectionTitle ? _self.sectionTitle : sectionTitle // ignore: cast_nullable_to_non_nullable
as String,questions: null == questions ? _self._questions : questions // ignore: cast_nullable_to_non_nullable
as List<SectionQuestionItem>,
  ));
}


}

/// @nodoc
mixin _$SectionQuestionItem {

 String get questionTitle; String get questionDescription;
/// Create a copy of SectionQuestionItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SectionQuestionItemCopyWith<SectionQuestionItem> get copyWith => _$SectionQuestionItemCopyWithImpl<SectionQuestionItem>(this as SectionQuestionItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SectionQuestionItem&&(identical(other.questionTitle, questionTitle) || other.questionTitle == questionTitle)&&(identical(other.questionDescription, questionDescription) || other.questionDescription == questionDescription));
}


@override
int get hashCode => Object.hash(runtimeType,questionTitle,questionDescription);

@override
String toString() {
  return 'SectionQuestionItem(questionTitle: $questionTitle, questionDescription: $questionDescription)';
}


}

/// @nodoc
abstract mixin class $SectionQuestionItemCopyWith<$Res>  {
  factory $SectionQuestionItemCopyWith(SectionQuestionItem value, $Res Function(SectionQuestionItem) _then) = _$SectionQuestionItemCopyWithImpl;
@useResult
$Res call({
 String questionTitle, String questionDescription
});




}
/// @nodoc
class _$SectionQuestionItemCopyWithImpl<$Res>
    implements $SectionQuestionItemCopyWith<$Res> {
  _$SectionQuestionItemCopyWithImpl(this._self, this._then);

  final SectionQuestionItem _self;
  final $Res Function(SectionQuestionItem) _then;

/// Create a copy of SectionQuestionItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? questionTitle = null,Object? questionDescription = null,}) {
  return _then(_self.copyWith(
questionTitle: null == questionTitle ? _self.questionTitle : questionTitle // ignore: cast_nullable_to_non_nullable
as String,questionDescription: null == questionDescription ? _self.questionDescription : questionDescription // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _SectionQuestionItem implements SectionQuestionItem {
  const _SectionQuestionItem({required this.questionTitle, required this.questionDescription});
  

@override final  String questionTitle;
@override final  String questionDescription;

/// Create a copy of SectionQuestionItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SectionQuestionItemCopyWith<_SectionQuestionItem> get copyWith => __$SectionQuestionItemCopyWithImpl<_SectionQuestionItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SectionQuestionItem&&(identical(other.questionTitle, questionTitle) || other.questionTitle == questionTitle)&&(identical(other.questionDescription, questionDescription) || other.questionDescription == questionDescription));
}


@override
int get hashCode => Object.hash(runtimeType,questionTitle,questionDescription);

@override
String toString() {
  return 'SectionQuestionItem(questionTitle: $questionTitle, questionDescription: $questionDescription)';
}


}

/// @nodoc
abstract mixin class _$SectionQuestionItemCopyWith<$Res> implements $SectionQuestionItemCopyWith<$Res> {
  factory _$SectionQuestionItemCopyWith(_SectionQuestionItem value, $Res Function(_SectionQuestionItem) _then) = __$SectionQuestionItemCopyWithImpl;
@override @useResult
$Res call({
 String questionTitle, String questionDescription
});




}
/// @nodoc
class __$SectionQuestionItemCopyWithImpl<$Res>
    implements _$SectionQuestionItemCopyWith<$Res> {
  __$SectionQuestionItemCopyWithImpl(this._self, this._then);

  final _SectionQuestionItem _self;
  final $Res Function(_SectionQuestionItem) _then;

/// Create a copy of SectionQuestionItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? questionTitle = null,Object? questionDescription = null,}) {
  return _then(_SectionQuestionItem(
questionTitle: null == questionTitle ? _self.questionTitle : questionTitle // ignore: cast_nullable_to_non_nullable
as String,questionDescription: null == questionDescription ? _self.questionDescription : questionDescription // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
