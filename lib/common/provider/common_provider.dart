import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_e_learning/common/provider/repository_provider.dart';
import 'package:flutter_e_learning/infrastructure/data/local/app_database.dart';
import 'package:flutter_e_learning/infrastructure/data/remote/client/dify_api_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../../generated/common/provider/common_provider.g.dart';

@Riverpod(keepAlive: true)
AppDatabase database(Ref ref) {
  return AppDatabase.instance;
}

@Riverpod(keepAlive: true)
Future<String?> apiKey(Ref ref) async {
  ref.watch(apiKeyRepositoryProvider);
  final apiKey = await ref.read(apiKeyRepositoryProvider).getApiKey();
  return apiKey?.value;
}

@Riverpod(keepAlive: true)
Future<DifyApiClient> apiClient(Ref ref) async {
  final apiKey = await ref.watch(apiKeyProvider.future);
  final dio = Dio(
    BaseOptions(
      headers: {
        'Authorization': 'Bearer $apiKey',
        'Content-Type': 'application/json',
      },
    ),
  );
  final baseUrl = 'http://10.0.2.2/v1'; // ポート番号を含めて指定
  return DifyApiClient(dio, baseUrl: baseUrl);
}

// 画面遷移の監視を行うためのRouteObserverを定義
final RouteObserver<ModalRoute<void>> routeObserver =
    RouteObserver<ModalRoute<void>>();
