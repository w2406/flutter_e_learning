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
          children: [
            Text('Hello, HomeScreen!'),
            ElevatedButton(
              onPressed: () {
                context.push(AppRoutes.sectionListPath);
              },
              child: Text("セクション一覧画面へ"),
            ),
            ElevatedButton(
              onPressed: () {
                context.push(AppRoutes.historyListPath);
              },
              child: Text("学習履歴一覧画面へ"),
            ),
          ],
        ),
      ),
    );
  }
}
