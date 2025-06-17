// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../infrastructure/data/remote/model/dify_chat/dify_chat_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DifyChatResponse _$DifyChatResponseFromJson(Map<String, dynamic> json) =>
    _DifyChatResponse(
      event: json['event'] as String?,
      taskId: json['task_id'] as String?,
      id: json['id'] as String?,
      messageId: json['message_id'] as String?,
      conversationId: json['conversation_id'] as String?,
      mode: json['mode'] as String?,
      answer: json['answer'] as String?,
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      createdAt: (json['created_at'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DifyChatResponseToJson(_DifyChatResponse instance) =>
    <String, dynamic>{
      'event': instance.event,
      'task_id': instance.taskId,
      'id': instance.id,
      'message_id': instance.messageId,
      'conversation_id': instance.conversationId,
      'mode': instance.mode,
      'answer': instance.answer,
      'metadata': instance.metadata,
      'created_at': instance.createdAt,
    };

_Metadata _$MetadataFromJson(Map<String, dynamic> json) => _Metadata(
  usage: json['usage'] == null
      ? null
      : Usage.fromJson(json['usage'] as Map<String, dynamic>),
  retrieverResources: (json['retriever_resources'] as List<dynamic>?)
      ?.map((e) => RetrieverResource.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$MetadataToJson(_Metadata instance) => <String, dynamic>{
  'usage': instance.usage,
  'retriever_resources': instance.retrieverResources,
};

_Usage _$UsageFromJson(Map<String, dynamic> json) => _Usage(
  promptTokens: (json['prompt_tokens'] as num?)?.toInt(),
  promptUnitPrice: json['prompt_unit_price'] as String?,
  promptPriceUnit: json['prompt_price_unit'] as String?,
  promptPrice: json['prompt_price'] as String?,
  completionTokens: (json['completion_tokens'] as num?)?.toInt(),
  completionUnitPrice: json['completion_unit_price'] as String?,
  completionPriceUnit: json['completion_price_unit'] as String?,
  completionPrice: json['completion_price'] as String?,
  totalTokens: (json['total_tokens'] as num?)?.toInt(),
  totalPrice: json['total_price'] as String?,
  currency: json['currency'] as String?,
  latency: (json['latency'] as num?)?.toDouble(),
);

Map<String, dynamic> _$UsageToJson(_Usage instance) => <String, dynamic>{
  'prompt_tokens': instance.promptTokens,
  'prompt_unit_price': instance.promptUnitPrice,
  'prompt_price_unit': instance.promptPriceUnit,
  'prompt_price': instance.promptPrice,
  'completion_tokens': instance.completionTokens,
  'completion_unit_price': instance.completionUnitPrice,
  'completion_price_unit': instance.completionPriceUnit,
  'completion_price': instance.completionPrice,
  'total_tokens': instance.totalTokens,
  'total_price': instance.totalPrice,
  'currency': instance.currency,
  'latency': instance.latency,
};

_RetrieverResource _$RetrieverResourceFromJson(Map<String, dynamic> json) =>
    _RetrieverResource(
      position: (json['position'] as num?)?.toInt(),
      datasetId: json['dataset_id'] as String?,
      datasetName: json['dataset_name'] as String?,
      documentId: json['document_id'] as String?,
      documentName: json['document_name'] as String?,
      segmentId: json['segment_id'] as String?,
      score: (json['score'] as num?)?.toDouble(),
      content: json['content'] as String?,
    );

Map<String, dynamic> _$RetrieverResourceToJson(_RetrieverResource instance) =>
    <String, dynamic>{
      'position': instance.position,
      'dataset_id': instance.datasetId,
      'dataset_name': instance.datasetName,
      'document_id': instance.documentId,
      'document_name': instance.documentName,
      'segment_id': instance.segmentId,
      'score': instance.score,
      'content': instance.content,
    };
