import 'package:flutter_e_learning/domain/setting/api_key/repository/api_key_repository.dart';
import 'package:flutter_e_learning/domain/setting/api_key/value_object/api_key.dart';

class GetApiKeyUsecase {
  final ApiKeyRepository repository;
  GetApiKeyUsecase(this.repository);

  Future<ApiKey?> execute() async {
    return await repository.getApiKey();
  }
}
