import 'package:flutter_e_learning/domain/history/history/entity/history.dart';
import 'package:flutter_e_learning/domain/history/history/repository/history_repository.dart';

class AddHistoryUseCase {
  final HistoryRepository repository;
  AddHistoryUseCase(this.repository);

  Future<void> execute(History history) async {
    await repository.addHistory(history);
  }
}
