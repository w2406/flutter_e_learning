import 'package:flutter/material.dart';
import 'package:flutter_e_learning/common/constants/route_paths.dart';
import 'package:flutter_e_learning/presantation/history_list/view_model/history_list_screen_view_model.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HistoryListScreen extends HookConsumerWidget {
  const HistoryListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(historyListScreenViewModelProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('HistoryList'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: state.when(
        data: (state) => ListView.builder(
          itemCount: state.items.length,
          itemBuilder: (context, index) {
            final item = state.items[index];
            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListTile(
                title: Text(item.historyTitle),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('解答日: ${item.answeredAt}'),
                    Text(
                      item.isCorrect ? '正解' : '不正解',
                      style: TextStyle(
                        color: item.isCorrect ? Colors.green : Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {
                  context.pushNamed(
                    AppRoutes.history,
                    pathParameters: {AppRoutes.historyId: item.historyId},
                  );
                },
              ),
            );
          },
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, st) => Center(child: Text('エラー: $e')),
      ),
    );
  }
}
