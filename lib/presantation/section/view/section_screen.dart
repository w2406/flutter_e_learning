import 'package:flutter/material.dart';
import 'package:flutter_e_learning/presantation/question/view/question_screen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SectionScreen extends HookConsumerWidget {
  const SectionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Section')),
      body: Center(
        child: Column(
          children: [
            Text('Hello, SectionScreen!'),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const QuestionScreen(),
                  ),
                );
              },
              child: Text("問題画面へ"),
            ),
          ],
        ),
      ),
    );
  }
}
