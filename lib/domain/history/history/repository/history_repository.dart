import 'package:flutter_e_learning/domain/history/history/entity/history.dart';

abstract interface class HistoryRepository {
  Future<History> getHistoryById(String id);
  Future<List<History>> getHistories();
  Future<void> addHistory(History history);
}
