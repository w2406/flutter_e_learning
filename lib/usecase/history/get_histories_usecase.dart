import 'package:flutter_e_learning/domain/history/history/entity/history.dart';
import 'package:flutter_e_learning/domain/history/history/repository/history_repository.dart';

class GetHistoriesUseCase {
  final HistoryRepository repository;
  GetHistoriesUseCase(this.repository);

  Future<List<History>> execute() async {
    return await repository.getHistories();
  }
}
