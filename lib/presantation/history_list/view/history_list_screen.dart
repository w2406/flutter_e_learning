import 'package:flutter/material.dart';
import 'package:flutter_e_learning/presantation/history/view/history_screen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HistoryListScreen extends HookConsumerWidget {
  const HistoryListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('HistoryList')),
      body: Center(
        child: Column(
          children: [
            Text('Hello, HistoryListScreen!'),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => HistoryScreen()),
                );
              },
              child: Text("問題画面(回答時の内容)へ"),
            ),
          ],
        ),
      ),
    );
  }
}
