import 'package:flutter_e_learning/domain/history/history/entity/history.dart';
import 'package:flutter_e_learning/domain/history/history/repository/history_repository.dart';

class GetHistoryUseCase {
  final HistoryRepository repository;
  GetHistoryUseCase(this.repository);

  Future<History> execute(String id) async {
    return await repository.getHistoryById(id);
  }
}
