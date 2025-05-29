import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class QuestionScreen extends HookConsumerWidget {
  const QuestionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Question')),
      body: Center(
        child: Column(
          children: [
            Text('Hello, QuestionScreen!'),
            ElevatedButton(
              onPressed: () {
                // 回答処理を実装する
              },
              child: Text("回答"),
            ),
          ],
        ),
      ),
    );
  }
}
