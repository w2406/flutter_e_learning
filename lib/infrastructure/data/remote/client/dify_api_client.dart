import 'package:dio/dio.dart';
import 'package:flutter_e_learning/infrastructure/data/remote/model/dify_chat/dify_chat_request.dart';
import 'package:flutter_e_learning/infrastructure/data/remote/model/dify_chat/dify_chat_response.dart';
import 'package:retrofit/retrofit.dart';

part '../../../../generated/infrastructure/data/remote/client/dify_api_client.g.dart';

@RestApi(baseUrl: "")
abstract class DifyApiClient {
  factory DifyApiClient(Dio dio, {String baseUrl}) = _DifyApiClient;

  @POST("/chat-messages")
  Future<DifyChatResponse> sendChatMessage(@Body() DifyChatRequest request);
}
