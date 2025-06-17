import 'package:flutter_e_learning/domain/dify/dify_chat_message/value_object/dify_chat_message.dart';

abstract interface class DifyChatMessageRepository {
  Future<DifyChatMessage> fetch(String message);
}
