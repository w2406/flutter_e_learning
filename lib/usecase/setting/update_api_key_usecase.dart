import 'package:flutter_e_learning/domain/setting/api_key/repository/api_key_repository.dart';
import 'package:flutter_e_learning/domain/setting/api_key/value_object/api_key.dart';

class UpdateApiKeyUsecase {
  final ApiKeyRepository repository;
  UpdateApiKeyUsecase(this.repository);

  Future<void> execute(ApiKey apiKey) async {
    await repository.saveApiKey(apiKey);
  }
}
