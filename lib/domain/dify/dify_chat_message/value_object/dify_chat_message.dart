import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/domain/dify/dify_chat_message/value_object/dify_chat_message.freezed.dart';

@freezed
abstract class DifyChatMessage with _$DifyChatMessage {
  const factory DifyChatMessage({required String value}) = _DifyChatMessage;
}
