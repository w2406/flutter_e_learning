// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../infrastructure/data/remote/model/dify_chat/dify_chat_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DifyChatRequest _$DifyChatRequestFromJson(Map<String, dynamic> json) =>
    _DifyChatRequest(
      query: json['query'] as String,
      user: json['user'] as String,
      conversation_id: json['conversation_id'] as String?,
      inputs: json['inputs'] as Map<String, dynamic>?,
      response_mode: json['response_mode'] as String?,
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      auto_generate_name: json['auto_generate_name'] as bool?,
    );

Map<String, dynamic> _$DifyChatRequestToJson(_DifyChatRequest instance) =>
    <String, dynamic>{
      'query': instance.query,
      'user': instance.user,
      'conversation_id': instance.conversation_id,
      'inputs': instance.inputs,
      'response_mode': instance.response_mode,
      'files': instance.files,
      'auto_generate_name': instance.auto_generate_name,
    };
