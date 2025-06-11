import 'package:flutter_e_learning/domain/setting/api_key/repository/api_key_repository.dart';
import 'package:flutter_e_learning/domain/setting/api_key/value_object/api_key.dart';

class ApiKeyRepositoryImpl implements ApiKeyRepository {
  @override
  Future<void> saveApiKey(ApiKey apiKey) async {
    // APIキーを保存する処理
  }

  @override
  Future<ApiKey?> getApiKey() async {
    // APIキーを取得する処理
    return ApiKey(value: 'example_api_key');
  }
}
