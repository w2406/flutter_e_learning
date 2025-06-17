import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../../generated/infrastructure/data/remote/model/dify_chat/dify_chat_response.freezed.dart';
part '../../../../../generated/infrastructure/data/remote/model/dify_chat/dify_chat_response.g.dart';

@freezed
abstract class DifyChatResponse with _$DifyChatResponse {
  const factory DifyChatResponse({
    String? event,
    @JsonKey(name: 'task_id') String? taskId,
    String? id,
    @JsonKey(name: 'message_id') String? messageId,
    @JsonKey(name: 'conversation_id') String? conversationId,
    String? mode,
    String? answer,
    Metadata? metadata,
    @JsonKey(name: 'created_at') int? createdAt,
  }) = _DifyChatResponse;

  factory DifyChatResponse.fromJson(Map<String, dynamic> json) =>
      _$DifyChatResponseFromJson(json);
}

@freezed
abstract class Metadata with _$Metadata {
  const factory Metadata({
    Usage? usage,
    @JsonKey(name: 'retriever_resources')
    List<RetrieverResource>? retrieverResources,
  }) = _Metadata;

  factory Metadata.fromJson(Map<String, dynamic> json) =>
      _$MetadataFromJson(json);
}

@freezed
abstract class Usage with _$Usage {
  const factory Usage({
    @JsonKey(name: 'prompt_tokens') int? promptTokens,
    @JsonKey(name: 'prompt_unit_price') String? promptUnitPrice,
    @JsonKey(name: 'prompt_price_unit') String? promptPriceUnit,
    @JsonKey(name: 'prompt_price') String? promptPrice,
    @JsonKey(name: 'completion_tokens') int? completionTokens,
    @JsonKey(name: 'completion_unit_price') String? completionUnitPrice,
    @JsonKey(name: 'completion_price_unit') String? completionPriceUnit,
    @JsonKey(name: 'completion_price') String? completionPrice,
    @JsonKey(name: 'total_tokens') int? totalTokens,
    @JsonKey(name: 'total_price') String? totalPrice,
    String? currency,
    double? latency,
  }) = _Usage;

  factory Usage.fromJson(Map<String, dynamic> json) => _$UsageFromJson(json);
}

@freezed
abstract class RetrieverResource with _$RetrieverResource {
  const factory RetrieverResource({
    int? position,
    @JsonKey(name: 'dataset_id') String? datasetId,
    @JsonKey(name: 'dataset_name') String? datasetName,
    @JsonKey(name: 'document_id') String? documentId,
    @JsonKey(name: 'document_name') String? documentName,
    @JsonKey(name: 'segment_id') String? segmentId,
    double? score,
    String? content,
  }) = _RetrieverResource;

  factory RetrieverResource.fromJson(Map<String, dynamic> json) =>
      _$RetrieverResourceFromJson(json);
}
