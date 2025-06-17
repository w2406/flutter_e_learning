import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../../generated/infrastructure/data/remote/model/dify_chat/dify_chat_request.freezed.dart';
part '../../../../../generated/infrastructure/data/remote/model/dify_chat/dify_chat_request.g.dart';

@freezed
abstract class DifyChatRequest with _$DifyChatRequest {
  const factory DifyChatRequest({
    required String query,
    required String user,
    String? conversation_id,
    Map<String, dynamic>? inputs,
    String? response_mode,
    List<Map<String, dynamic>>? files,
    bool? auto_generate_name,
  }) = _DifyChatRequest;

  factory DifyChatRequest.fromJson(Map<String, dynamic> json) =>
      _$DifyChatRequestFromJson(json);
}
