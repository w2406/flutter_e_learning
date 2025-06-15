import 'package:flutter_e_learning/domain/setting/api_key/repository/api_key_repository.dart';
import 'package:flutter_e_learning/domain/setting/api_key/value_object/api_key.dart';
import 'package:flutter_e_learning/infrastructure/data/local/app_database.dart';
import 'package:sqflite/sqflite.dart';

class ApiKeyRepositoryImpl implements ApiKeyRepository {
  @override
  Future<void> saveApiKey(ApiKey apiKey) async {
    final db = await AppDatabase.instance.database;
    await db.insert('app_settings', {
      'id': 1,
      'api_key': apiKey.value,
    }, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  @override
  Future<ApiKey?> getApiKey() async {
    final db = await AppDatabase.instance.database;
    final result = await db.query('app_settings', where: 'id = 1');
    if (result.isNotEmpty) {
      return ApiKey(value: result.first['api_key'] as String);
    }
    return null;
  }
}
