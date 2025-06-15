import 'package:flutter/material.dart';
import 'package:flutter_e_learning/infrastructure/data/local/app_database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../../generated/common/provider/common_provider.g.dart';

@Riverpod(keepAlive: true)
AppDatabase database(Ref ref) {
  return AppDatabase.instance;
}

// 画面遷移の監視を行うためのRouteObserverを定義
final RouteObserver<ModalRoute<void>> routeObserver =
    RouteObserver<ModalRoute<void>>();
