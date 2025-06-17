// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../../infrastructure/data/remote/model/dify_chat/dify_chat_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DifyChatResponse {

 String? get event;@JsonKey(name: 'task_id') String? get taskId; String? get id;@JsonKey(name: 'message_id') String? get messageId;@JsonKey(name: 'conversation_id') String? get conversationId; String? get mode; String? get answer; Metadata? get metadata;@JsonKey(name: 'created_at') int? get createdAt;
/// Create a copy of DifyChatResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DifyChatResponseCopyWith<DifyChatResponse> get copyWith => _$DifyChatResponseCopyWithImpl<DifyChatResponse>(this as DifyChatResponse, _$identity);

  /// Serializes this DifyChatResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DifyChatResponse&&(identical(other.event, event) || other.event == event)&&(identical(other.taskId, taskId) || other.taskId == taskId)&&(identical(other.id, id) || other.id == id)&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&(identical(other.mode, mode) || other.mode == mode)&&(identical(other.answer, answer) || other.answer == answer)&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,event,taskId,id,messageId,conversationId,mode,answer,metadata,createdAt);

@override
String toString() {
  return 'DifyChatResponse(event: $event, taskId: $taskId, id: $id, messageId: $messageId, conversationId: $conversationId, mode: $mode, answer: $answer, metadata: $metadata, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $DifyChatResponseCopyWith<$Res>  {
  factory $DifyChatResponseCopyWith(DifyChatResponse value, $Res Function(DifyChatResponse) _then) = _$DifyChatResponseCopyWithImpl;
@useResult
$Res call({
 String? event,@JsonKey(name: 'task_id') String? taskId, String? id,@JsonKey(name: 'message_id') String? messageId,@JsonKey(name: 'conversation_id') String? conversationId, String? mode, String? answer, Metadata? metadata,@JsonKey(name: 'created_at') int? createdAt
});


$MetadataCopyWith<$Res>? get metadata;

}
/// @nodoc
class _$DifyChatResponseCopyWithImpl<$Res>
    implements $DifyChatResponseCopyWith<$Res> {
  _$DifyChatResponseCopyWithImpl(this._self, this._then);

  final DifyChatResponse _self;
  final $Res Function(DifyChatResponse) _then;

/// Create a copy of DifyChatResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? event = freezed,Object? taskId = freezed,Object? id = freezed,Object? messageId = freezed,Object? conversationId = freezed,Object? mode = freezed,Object? answer = freezed,Object? metadata = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
event: freezed == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as String?,taskId: freezed == taskId ? _self.taskId : taskId // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,messageId: freezed == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String?,conversationId: freezed == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String?,mode: freezed == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as String?,answer: freezed == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Metadata?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of DifyChatResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetadataCopyWith<$Res>? get metadata {
    if (_self.metadata == null) {
    return null;
  }

  return $MetadataCopyWith<$Res>(_self.metadata!, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _DifyChatResponse implements DifyChatResponse {
  const _DifyChatResponse({this.event, @JsonKey(name: 'task_id') this.taskId, this.id, @JsonKey(name: 'message_id') this.messageId, @JsonKey(name: 'conversation_id') this.conversationId, this.mode, this.answer, this.metadata, @JsonKey(name: 'created_at') this.createdAt});
  factory _DifyChatResponse.fromJson(Map<String, dynamic> json) => _$DifyChatResponseFromJson(json);

@override final  String? event;
@override@JsonKey(name: 'task_id') final  String? taskId;
@override final  String? id;
@override@JsonKey(name: 'message_id') final  String? messageId;
@override@JsonKey(name: 'conversation_id') final  String? conversationId;
@override final  String? mode;
@override final  String? answer;
@override final  Metadata? metadata;
@override@JsonKey(name: 'created_at') final  int? createdAt;

/// Create a copy of DifyChatResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DifyChatResponseCopyWith<_DifyChatResponse> get copyWith => __$DifyChatResponseCopyWithImpl<_DifyChatResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DifyChatResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DifyChatResponse&&(identical(other.event, event) || other.event == event)&&(identical(other.taskId, taskId) || other.taskId == taskId)&&(identical(other.id, id) || other.id == id)&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&(identical(other.mode, mode) || other.mode == mode)&&(identical(other.answer, answer) || other.answer == answer)&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,event,taskId,id,messageId,conversationId,mode,answer,metadata,createdAt);

@override
String toString() {
  return 'DifyChatResponse(event: $event, taskId: $taskId, id: $id, messageId: $messageId, conversationId: $conversationId, mode: $mode, answer: $answer, metadata: $metadata, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$DifyChatResponseCopyWith<$Res> implements $DifyChatResponseCopyWith<$Res> {
  factory _$DifyChatResponseCopyWith(_DifyChatResponse value, $Res Function(_DifyChatResponse) _then) = __$DifyChatResponseCopyWithImpl;
@override @useResult
$Res call({
 String? event,@JsonKey(name: 'task_id') String? taskId, String? id,@JsonKey(name: 'message_id') String? messageId,@JsonKey(name: 'conversation_id') String? conversationId, String? mode, String? answer, Metadata? metadata,@JsonKey(name: 'created_at') int? createdAt
});


@override $MetadataCopyWith<$Res>? get metadata;

}
/// @nodoc
class __$DifyChatResponseCopyWithImpl<$Res>
    implements _$DifyChatResponseCopyWith<$Res> {
  __$DifyChatResponseCopyWithImpl(this._self, this._then);

  final _DifyChatResponse _self;
  final $Res Function(_DifyChatResponse) _then;

/// Create a copy of DifyChatResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? event = freezed,Object? taskId = freezed,Object? id = freezed,Object? messageId = freezed,Object? conversationId = freezed,Object? mode = freezed,Object? answer = freezed,Object? metadata = freezed,Object? createdAt = freezed,}) {
  return _then(_DifyChatResponse(
event: freezed == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as String?,taskId: freezed == taskId ? _self.taskId : taskId // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,messageId: freezed == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String?,conversationId: freezed == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String?,mode: freezed == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as String?,answer: freezed == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Metadata?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of DifyChatResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetadataCopyWith<$Res>? get metadata {
    if (_self.metadata == null) {
    return null;
  }

  return $MetadataCopyWith<$Res>(_self.metadata!, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// @nodoc
mixin _$Metadata {

 Usage? get usage;@JsonKey(name: 'retriever_resources') List<RetrieverResource>? get retrieverResources;
/// Create a copy of Metadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetadataCopyWith<Metadata> get copyWith => _$MetadataCopyWithImpl<Metadata>(this as Metadata, _$identity);

  /// Serializes this Metadata to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Metadata&&(identical(other.usage, usage) || other.usage == usage)&&const DeepCollectionEquality().equals(other.retrieverResources, retrieverResources));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,usage,const DeepCollectionEquality().hash(retrieverResources));

@override
String toString() {
  return 'Metadata(usage: $usage, retrieverResources: $retrieverResources)';
}


}

/// @nodoc
abstract mixin class $MetadataCopyWith<$Res>  {
  factory $MetadataCopyWith(Metadata value, $Res Function(Metadata) _then) = _$MetadataCopyWithImpl;
@useResult
$Res call({
 Usage? usage,@JsonKey(name: 'retriever_resources') List<RetrieverResource>? retrieverResources
});


$UsageCopyWith<$Res>? get usage;

}
/// @nodoc
class _$MetadataCopyWithImpl<$Res>
    implements $MetadataCopyWith<$Res> {
  _$MetadataCopyWithImpl(this._self, this._then);

  final Metadata _self;
  final $Res Function(Metadata) _then;

/// Create a copy of Metadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? usage = freezed,Object? retrieverResources = freezed,}) {
  return _then(_self.copyWith(
usage: freezed == usage ? _self.usage : usage // ignore: cast_nullable_to_non_nullable
as Usage?,retrieverResources: freezed == retrieverResources ? _self.retrieverResources : retrieverResources // ignore: cast_nullable_to_non_nullable
as List<RetrieverResource>?,
  ));
}
/// Create a copy of Metadata
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UsageCopyWith<$Res>? get usage {
    if (_self.usage == null) {
    return null;
  }

  return $UsageCopyWith<$Res>(_self.usage!, (value) {
    return _then(_self.copyWith(usage: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _Metadata implements Metadata {
  const _Metadata({this.usage, @JsonKey(name: 'retriever_resources') final  List<RetrieverResource>? retrieverResources}): _retrieverResources = retrieverResources;
  factory _Metadata.fromJson(Map<String, dynamic> json) => _$MetadataFromJson(json);

@override final  Usage? usage;
 final  List<RetrieverResource>? _retrieverResources;
@override@JsonKey(name: 'retriever_resources') List<RetrieverResource>? get retrieverResources {
  final value = _retrieverResources;
  if (value == null) return null;
  if (_retrieverResources is EqualUnmodifiableListView) return _retrieverResources;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Metadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MetadataCopyWith<_Metadata> get copyWith => __$MetadataCopyWithImpl<_Metadata>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MetadataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Metadata&&(identical(other.usage, usage) || other.usage == usage)&&const DeepCollectionEquality().equals(other._retrieverResources, _retrieverResources));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,usage,const DeepCollectionEquality().hash(_retrieverResources));

@override
String toString() {
  return 'Metadata(usage: $usage, retrieverResources: $retrieverResources)';
}


}

/// @nodoc
abstract mixin class _$MetadataCopyWith<$Res> implements $MetadataCopyWith<$Res> {
  factory _$MetadataCopyWith(_Metadata value, $Res Function(_Metadata) _then) = __$MetadataCopyWithImpl;
@override @useResult
$Res call({
 Usage? usage,@JsonKey(name: 'retriever_resources') List<RetrieverResource>? retrieverResources
});


@override $UsageCopyWith<$Res>? get usage;

}
/// @nodoc
class __$MetadataCopyWithImpl<$Res>
    implements _$MetadataCopyWith<$Res> {
  __$MetadataCopyWithImpl(this._self, this._then);

  final _Metadata _self;
  final $Res Function(_Metadata) _then;

/// Create a copy of Metadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? usage = freezed,Object? retrieverResources = freezed,}) {
  return _then(_Metadata(
usage: freezed == usage ? _self.usage : usage // ignore: cast_nullable_to_non_nullable
as Usage?,retrieverResources: freezed == retrieverResources ? _self._retrieverResources : retrieverResources // ignore: cast_nullable_to_non_nullable
as List<RetrieverResource>?,
  ));
}

/// Create a copy of Metadata
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UsageCopyWith<$Res>? get usage {
    if (_self.usage == null) {
    return null;
  }

  return $UsageCopyWith<$Res>(_self.usage!, (value) {
    return _then(_self.copyWith(usage: value));
  });
}
}


/// @nodoc
mixin _$Usage {

@JsonKey(name: 'prompt_tokens') int? get promptTokens;@JsonKey(name: 'prompt_unit_price') String? get promptUnitPrice;@JsonKey(name: 'prompt_price_unit') String? get promptPriceUnit;@JsonKey(name: 'prompt_price') String? get promptPrice;@JsonKey(name: 'completion_tokens') int? get completionTokens;@JsonKey(name: 'completion_unit_price') String? get completionUnitPrice;@JsonKey(name: 'completion_price_unit') String? get completionPriceUnit;@JsonKey(name: 'completion_price') String? get completionPrice;@JsonKey(name: 'total_tokens') int? get totalTokens;@JsonKey(name: 'total_price') String? get totalPrice; String? get currency; double? get latency;
/// Create a copy of Usage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UsageCopyWith<Usage> get copyWith => _$UsageCopyWithImpl<Usage>(this as Usage, _$identity);

  /// Serializes this Usage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Usage&&(identical(other.promptTokens, promptTokens) || other.promptTokens == promptTokens)&&(identical(other.promptUnitPrice, promptUnitPrice) || other.promptUnitPrice == promptUnitPrice)&&(identical(other.promptPriceUnit, promptPriceUnit) || other.promptPriceUnit == promptPriceUnit)&&(identical(other.promptPrice, promptPrice) || other.promptPrice == promptPrice)&&(identical(other.completionTokens, completionTokens) || other.completionTokens == completionTokens)&&(identical(other.completionUnitPrice, completionUnitPrice) || other.completionUnitPrice == completionUnitPrice)&&(identical(other.completionPriceUnit, completionPriceUnit) || other.completionPriceUnit == completionPriceUnit)&&(identical(other.completionPrice, completionPrice) || other.completionPrice == completionPrice)&&(identical(other.totalTokens, totalTokens) || other.totalTokens == totalTokens)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.latency, latency) || other.latency == latency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,promptTokens,promptUnitPrice,promptPriceUnit,promptPrice,completionTokens,completionUnitPrice,completionPriceUnit,completionPrice,totalTokens,totalPrice,currency,latency);

@override
String toString() {
  return 'Usage(promptTokens: $promptTokens, promptUnitPrice: $promptUnitPrice, promptPriceUnit: $promptPriceUnit, promptPrice: $promptPrice, completionTokens: $completionTokens, completionUnitPrice: $completionUnitPrice, completionPriceUnit: $completionPriceUnit, completionPrice: $completionPrice, totalTokens: $totalTokens, totalPrice: $totalPrice, currency: $currency, latency: $latency)';
}


}

/// @nodoc
abstract mixin class $UsageCopyWith<$Res>  {
  factory $UsageCopyWith(Usage value, $Res Function(Usage) _then) = _$UsageCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'prompt_tokens') int? promptTokens,@JsonKey(name: 'prompt_unit_price') String? promptUnitPrice,@JsonKey(name: 'prompt_price_unit') String? promptPriceUnit,@JsonKey(name: 'prompt_price') String? promptPrice,@JsonKey(name: 'completion_tokens') int? completionTokens,@JsonKey(name: 'completion_unit_price') String? completionUnitPrice,@JsonKey(name: 'completion_price_unit') String? completionPriceUnit,@JsonKey(name: 'completion_price') String? completionPrice,@JsonKey(name: 'total_tokens') int? totalTokens,@JsonKey(name: 'total_price') String? totalPrice, String? currency, double? latency
});




}
/// @nodoc
class _$UsageCopyWithImpl<$Res>
    implements $UsageCopyWith<$Res> {
  _$UsageCopyWithImpl(this._self, this._then);

  final Usage _self;
  final $Res Function(Usage) _then;

/// Create a copy of Usage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? promptTokens = freezed,Object? promptUnitPrice = freezed,Object? promptPriceUnit = freezed,Object? promptPrice = freezed,Object? completionTokens = freezed,Object? completionUnitPrice = freezed,Object? completionPriceUnit = freezed,Object? completionPrice = freezed,Object? totalTokens = freezed,Object? totalPrice = freezed,Object? currency = freezed,Object? latency = freezed,}) {
  return _then(_self.copyWith(
promptTokens: freezed == promptTokens ? _self.promptTokens : promptTokens // ignore: cast_nullable_to_non_nullable
as int?,promptUnitPrice: freezed == promptUnitPrice ? _self.promptUnitPrice : promptUnitPrice // ignore: cast_nullable_to_non_nullable
as String?,promptPriceUnit: freezed == promptPriceUnit ? _self.promptPriceUnit : promptPriceUnit // ignore: cast_nullable_to_non_nullable
as String?,promptPrice: freezed == promptPrice ? _self.promptPrice : promptPrice // ignore: cast_nullable_to_non_nullable
as String?,completionTokens: freezed == completionTokens ? _self.completionTokens : completionTokens // ignore: cast_nullable_to_non_nullable
as int?,completionUnitPrice: freezed == completionUnitPrice ? _self.completionUnitPrice : completionUnitPrice // ignore: cast_nullable_to_non_nullable
as String?,completionPriceUnit: freezed == completionPriceUnit ? _self.completionPriceUnit : completionPriceUnit // ignore: cast_nullable_to_non_nullable
as String?,completionPrice: freezed == completionPrice ? _self.completionPrice : completionPrice // ignore: cast_nullable_to_non_nullable
as String?,totalTokens: freezed == totalTokens ? _self.totalTokens : totalTokens // ignore: cast_nullable_to_non_nullable
as int?,totalPrice: freezed == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,latency: freezed == latency ? _self.latency : latency // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Usage implements Usage {
  const _Usage({@JsonKey(name: 'prompt_tokens') this.promptTokens, @JsonKey(name: 'prompt_unit_price') this.promptUnitPrice, @JsonKey(name: 'prompt_price_unit') this.promptPriceUnit, @JsonKey(name: 'prompt_price') this.promptPrice, @JsonKey(name: 'completion_tokens') this.completionTokens, @JsonKey(name: 'completion_unit_price') this.completionUnitPrice, @JsonKey(name: 'completion_price_unit') this.completionPriceUnit, @JsonKey(name: 'completion_price') this.completionPrice, @JsonKey(name: 'total_tokens') this.totalTokens, @JsonKey(name: 'total_price') this.totalPrice, this.currency, this.latency});
  factory _Usage.fromJson(Map<String, dynamic> json) => _$UsageFromJson(json);

@override@JsonKey(name: 'prompt_tokens') final  int? promptTokens;
@override@JsonKey(name: 'prompt_unit_price') final  String? promptUnitPrice;
@override@JsonKey(name: 'prompt_price_unit') final  String? promptPriceUnit;
@override@JsonKey(name: 'prompt_price') final  String? promptPrice;
@override@JsonKey(name: 'completion_tokens') final  int? completionTokens;
@override@JsonKey(name: 'completion_unit_price') final  String? completionUnitPrice;
@override@JsonKey(name: 'completion_price_unit') final  String? completionPriceUnit;
@override@JsonKey(name: 'completion_price') final  String? completionPrice;
@override@JsonKey(name: 'total_tokens') final  int? totalTokens;
@override@JsonKey(name: 'total_price') final  String? totalPrice;
@override final  String? currency;
@override final  double? latency;

/// Create a copy of Usage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UsageCopyWith<_Usage> get copyWith => __$UsageCopyWithImpl<_Usage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UsageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Usage&&(identical(other.promptTokens, promptTokens) || other.promptTokens == promptTokens)&&(identical(other.promptUnitPrice, promptUnitPrice) || other.promptUnitPrice == promptUnitPrice)&&(identical(other.promptPriceUnit, promptPriceUnit) || other.promptPriceUnit == promptPriceUnit)&&(identical(other.promptPrice, promptPrice) || other.promptPrice == promptPrice)&&(identical(other.completionTokens, completionTokens) || other.completionTokens == completionTokens)&&(identical(other.completionUnitPrice, completionUnitPrice) || other.completionUnitPrice == completionUnitPrice)&&(identical(other.completionPriceUnit, completionPriceUnit) || other.completionPriceUnit == completionPriceUnit)&&(identical(other.completionPrice, completionPrice) || other.completionPrice == completionPrice)&&(identical(other.totalTokens, totalTokens) || other.totalTokens == totalTokens)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.latency, latency) || other.latency == latency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,promptTokens,promptUnitPrice,promptPriceUnit,promptPrice,completionTokens,completionUnitPrice,completionPriceUnit,completionPrice,totalTokens,totalPrice,currency,latency);

@override
String toString() {
  return 'Usage(promptTokens: $promptTokens, promptUnitPrice: $promptUnitPrice, promptPriceUnit: $promptPriceUnit, promptPrice: $promptPrice, completionTokens: $completionTokens, completionUnitPrice: $completionUnitPrice, completionPriceUnit: $completionPriceUnit, completionPrice: $completionPrice, totalTokens: $totalTokens, totalPrice: $totalPrice, currency: $currency, latency: $latency)';
}


}

/// @nodoc
abstract mixin class _$UsageCopyWith<$Res> implements $UsageCopyWith<$Res> {
  factory _$UsageCopyWith(_Usage value, $Res Function(_Usage) _then) = __$UsageCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'prompt_tokens') int? promptTokens,@JsonKey(name: 'prompt_unit_price') String? promptUnitPrice,@JsonKey(name: 'prompt_price_unit') String? promptPriceUnit,@JsonKey(name: 'prompt_price') String? promptPrice,@JsonKey(name: 'completion_tokens') int? completionTokens,@JsonKey(name: 'completion_unit_price') String? completionUnitPrice,@JsonKey(name: 'completion_price_unit') String? completionPriceUnit,@JsonKey(name: 'completion_price') String? completionPrice,@JsonKey(name: 'total_tokens') int? totalTokens,@JsonKey(name: 'total_price') String? totalPrice, String? currency, double? latency
});




}
/// @nodoc
class __$UsageCopyWithImpl<$Res>
    implements _$UsageCopyWith<$Res> {
  __$UsageCopyWithImpl(this._self, this._then);

  final _Usage _self;
  final $Res Function(_Usage) _then;

/// Create a copy of Usage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? promptTokens = freezed,Object? promptUnitPrice = freezed,Object? promptPriceUnit = freezed,Object? promptPrice = freezed,Object? completionTokens = freezed,Object? completionUnitPrice = freezed,Object? completionPriceUnit = freezed,Object? completionPrice = freezed,Object? totalTokens = freezed,Object? totalPrice = freezed,Object? currency = freezed,Object? latency = freezed,}) {
  return _then(_Usage(
promptTokens: freezed == promptTokens ? _self.promptTokens : promptTokens // ignore: cast_nullable_to_non_nullable
as int?,promptUnitPrice: freezed == promptUnitPrice ? _self.promptUnitPrice : promptUnitPrice // ignore: cast_nullable_to_non_nullable
as String?,promptPriceUnit: freezed == promptPriceUnit ? _self.promptPriceUnit : promptPriceUnit // ignore: cast_nullable_to_non_nullable
as String?,promptPrice: freezed == promptPrice ? _self.promptPrice : promptPrice // ignore: cast_nullable_to_non_nullable
as String?,completionTokens: freezed == completionTokens ? _self.completionTokens : completionTokens // ignore: cast_nullable_to_non_nullable
as int?,completionUnitPrice: freezed == completionUnitPrice ? _self.completionUnitPrice : completionUnitPrice // ignore: cast_nullable_to_non_nullable
as String?,completionPriceUnit: freezed == completionPriceUnit ? _self.completionPriceUnit : completionPriceUnit // ignore: cast_nullable_to_non_nullable
as String?,completionPrice: freezed == completionPrice ? _self.completionPrice : completionPrice // ignore: cast_nullable_to_non_nullable
as String?,totalTokens: freezed == totalTokens ? _self.totalTokens : totalTokens // ignore: cast_nullable_to_non_nullable
as int?,totalPrice: freezed == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,latency: freezed == latency ? _self.latency : latency // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$RetrieverResource {

 int? get position;@JsonKey(name: 'dataset_id') String? get datasetId;@JsonKey(name: 'dataset_name') String? get datasetName;@JsonKey(name: 'document_id') String? get documentId;@JsonKey(name: 'document_name') String? get documentName;@JsonKey(name: 'segment_id') String? get segmentId; double? get score; String? get content;
/// Create a copy of RetrieverResource
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RetrieverResourceCopyWith<RetrieverResource> get copyWith => _$RetrieverResourceCopyWithImpl<RetrieverResource>(this as RetrieverResource, _$identity);

  /// Serializes this RetrieverResource to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RetrieverResource&&(identical(other.position, position) || other.position == position)&&(identical(other.datasetId, datasetId) || other.datasetId == datasetId)&&(identical(other.datasetName, datasetName) || other.datasetName == datasetName)&&(identical(other.documentId, documentId) || other.documentId == documentId)&&(identical(other.documentName, documentName) || other.documentName == documentName)&&(identical(other.segmentId, segmentId) || other.segmentId == segmentId)&&(identical(other.score, score) || other.score == score)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,position,datasetId,datasetName,documentId,documentName,segmentId,score,content);

@override
String toString() {
  return 'RetrieverResource(position: $position, datasetId: $datasetId, datasetName: $datasetName, documentId: $documentId, documentName: $documentName, segmentId: $segmentId, score: $score, content: $content)';
}


}

/// @nodoc
abstract mixin class $RetrieverResourceCopyWith<$Res>  {
  factory $RetrieverResourceCopyWith(RetrieverResource value, $Res Function(RetrieverResource) _then) = _$RetrieverResourceCopyWithImpl;
@useResult
$Res call({
 int? position,@JsonKey(name: 'dataset_id') String? datasetId,@JsonKey(name: 'dataset_name') String? datasetName,@JsonKey(name: 'document_id') String? documentId,@JsonKey(name: 'document_name') String? documentName,@JsonKey(name: 'segment_id') String? segmentId, double? score, String? content
});




}
/// @nodoc
class _$RetrieverResourceCopyWithImpl<$Res>
    implements $RetrieverResourceCopyWith<$Res> {
  _$RetrieverResourceCopyWithImpl(this._self, this._then);

  final RetrieverResource _self;
  final $Res Function(RetrieverResource) _then;

/// Create a copy of RetrieverResource
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? position = freezed,Object? datasetId = freezed,Object? datasetName = freezed,Object? documentId = freezed,Object? documentName = freezed,Object? segmentId = freezed,Object? score = freezed,Object? content = freezed,}) {
  return _then(_self.copyWith(
position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,datasetId: freezed == datasetId ? _self.datasetId : datasetId // ignore: cast_nullable_to_non_nullable
as String?,datasetName: freezed == datasetName ? _self.datasetName : datasetName // ignore: cast_nullable_to_non_nullable
as String?,documentId: freezed == documentId ? _self.documentId : documentId // ignore: cast_nullable_to_non_nullable
as String?,documentName: freezed == documentName ? _self.documentName : documentName // ignore: cast_nullable_to_non_nullable
as String?,segmentId: freezed == segmentId ? _self.segmentId : segmentId // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _RetrieverResource implements RetrieverResource {
  const _RetrieverResource({this.position, @JsonKey(name: 'dataset_id') this.datasetId, @JsonKey(name: 'dataset_name') this.datasetName, @JsonKey(name: 'document_id') this.documentId, @JsonKey(name: 'document_name') this.documentName, @JsonKey(name: 'segment_id') this.segmentId, this.score, this.content});
  factory _RetrieverResource.fromJson(Map<String, dynamic> json) => _$RetrieverResourceFromJson(json);

@override final  int? position;
@override@JsonKey(name: 'dataset_id') final  String? datasetId;
@override@JsonKey(name: 'dataset_name') final  String? datasetName;
@override@JsonKey(name: 'document_id') final  String? documentId;
@override@JsonKey(name: 'document_name') final  String? documentName;
@override@JsonKey(name: 'segment_id') final  String? segmentId;
@override final  double? score;
@override final  String? content;

/// Create a copy of RetrieverResource
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RetrieverResourceCopyWith<_RetrieverResource> get copyWith => __$RetrieverResourceCopyWithImpl<_RetrieverResource>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RetrieverResourceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RetrieverResource&&(identical(other.position, position) || other.position == position)&&(identical(other.datasetId, datasetId) || other.datasetId == datasetId)&&(identical(other.datasetName, datasetName) || other.datasetName == datasetName)&&(identical(other.documentId, documentId) || other.documentId == documentId)&&(identical(other.documentName, documentName) || other.documentName == documentName)&&(identical(other.segmentId, segmentId) || other.segmentId == segmentId)&&(identical(other.score, score) || other.score == score)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,position,datasetId,datasetName,documentId,documentName,segmentId,score,content);

@override
String toString() {
  return 'RetrieverResource(position: $position, datasetId: $datasetId, datasetName: $datasetName, documentId: $documentId, documentName: $documentName, segmentId: $segmentId, score: $score, content: $content)';
}


}

/// @nodoc
abstract mixin class _$RetrieverResourceCopyWith<$Res> implements $RetrieverResourceCopyWith<$Res> {
  factory _$RetrieverResourceCopyWith(_RetrieverResource value, $Res Function(_RetrieverResource) _then) = __$RetrieverResourceCopyWithImpl;
@override @useResult
$Res call({
 int? position,@JsonKey(name: 'dataset_id') String? datasetId,@JsonKey(name: 'dataset_name') String? datasetName,@JsonKey(name: 'document_id') String? documentId,@JsonKey(name: 'document_name') String? documentName,@JsonKey(name: 'segment_id') String? segmentId, double? score, String? content
});




}
/// @nodoc
class __$RetrieverResourceCopyWithImpl<$Res>
    implements _$RetrieverResourceCopyWith<$Res> {
  __$RetrieverResourceCopyWithImpl(this._self, this._then);

  final _RetrieverResource _self;
  final $Res Function(_RetrieverResource) _then;

/// Create a copy of RetrieverResource
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? position = freezed,Object? datasetId = freezed,Object? datasetName = freezed,Object? documentId = freezed,Object? documentName = freezed,Object? segmentId = freezed,Object? score = freezed,Object? content = freezed,}) {
  return _then(_RetrieverResource(
position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,datasetId: freezed == datasetId ? _self.datasetId : datasetId // ignore: cast_nullable_to_non_nullable
as String?,datasetName: freezed == datasetName ? _self.datasetName : datasetName // ignore: cast_nullable_to_non_nullable
as String?,documentId: freezed == documentId ? _self.documentId : documentId // ignore: cast_nullable_to_non_nullable
as String?,documentName: freezed == documentName ? _self.documentName : documentName // ignore: cast_nullable_to_non_nullable
as String?,segmentId: freezed == segmentId ? _self.segmentId : segmentId // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
