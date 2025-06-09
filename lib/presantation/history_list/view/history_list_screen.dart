import 'package:flutter/material.dart';
import 'package:flutter_e_learning/common/route_paths.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HistoryListScreen extends HookConsumerWidget {
  const HistoryListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HistoryList'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: ListView.builder(
        itemCount: 8, // 仮の履歴数
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              title: Text('解いた問題${index + 1}'),
              subtitle: Text('解答日: 2025/06/0${(index % 9) + 1}'),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                context.push(AppRoutes.historyPath);
              },
            ),
          );
        },
      ),
    );
  }
}
