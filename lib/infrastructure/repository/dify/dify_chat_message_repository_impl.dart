import 'package:flutter_e_learning/domain/dify/dify_chat_message/repository/dify_chat_message_repository.dart';
import 'package:flutter_e_learning/domain/dify/dify_chat_message/value_object/dify_chat_message.dart';
import 'package:flutter_e_learning/infrastructure/data/remote/client/dify_api_client.dart';
import 'package:flutter_e_learning/infrastructure/data/remote/model/dify_chat/dify_chat_request.dart';

class DifyChatMessageRepositoryImpl implements DifyChatMessageRepository {
  final DifyApiClient apiClient;

  DifyChatMessageRepositoryImpl({required this.apiClient});

  @override
  Future<DifyChatMessage> fetch(String message) async {
    final request = DifyChatRequest(
      query: message,
      user: "user_123",
      inputs: const {},
      response_mode: "blocking",
      conversation_id: "",
      files: [],
    );
    final response = await apiClient.sendChatMessage(request);
    return DifyChatMessage(value: response.answer ?? '');
  }
}
