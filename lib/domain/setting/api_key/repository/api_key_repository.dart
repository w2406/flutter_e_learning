import 'package:flutter_e_learning/domain/setting/api_key/value_object/api_key.dart';

abstract interface class ApiKeyRepository {
  Future<void> saveApiKey(ApiKey apiKey);
  Future<ApiKey?> getApiKey();
}
