import 'package:flutter_e_learning/domain/dify/dify_chat_message/repository/dify_chat_message_repository.dart';
import 'package:flutter_e_learning/domain/dify/dify_chat_message/value_object/dify_chat_message.dart';

class GetDifyChatMessageUseCase {
  final DifyChatMessageRepository _difyChatMessageRepository;

  GetDifyChatMessageUseCase(this._difyChatMessageRepository);

  Future<DifyChatMessage> execute(String message) async {
    final result = await _difyChatMessageRepository.fetch(message);
    return DifyChatMessage(value: result.value);
  }
}
