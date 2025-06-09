import 'package:flutter/material.dart';
import 'package:flutter_e_learning/common/route_paths.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 学習進捗率
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Column(
                children: [
                  Text(
                    '学習進捗率',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  LinearProgressIndicator(
                    value: 0.6,
                    minHeight: 12,
                  ), // 仮の進捗率60%
                  SizedBox(height: 4),
                  Text('60%', style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
            // セクション一覧画面へ遷移ボタン
            ElevatedButton(
              onPressed: () {
                context.push(AppRoutes.sectionListPath);
              },
              child: Text("セクション一覧画面へ"),
            ),
            SizedBox(height: 16),
            // 履歴一覧画面へ遷移ボタン
            ElevatedButton(
              onPressed: () {
                context.push(AppRoutes.historyListPath);
              },
              child: Text("履歴一覧画面へ"),
            ),
          ],
        ),
      ),
    );
  }
}
