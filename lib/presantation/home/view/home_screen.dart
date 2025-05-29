import 'package:flutter/material.dart';
import 'package:flutter_e_learning/presantation/history_list/view/history_list_screen.dart';
import 'package:flutter_e_learning/presantation/section_list/view/section_list_screen.dart';
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
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SectionListScreen()),
                );
              },
              child: Text("セクション一覧画面へ"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => HistoryListScreen()),
                );
              },
              child: Text("学習履歴一覧画面へ"),
            ),
          ],
        ),
      ),
    );
  }
}
