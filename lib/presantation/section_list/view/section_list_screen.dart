import 'package:flutter/material.dart';
import 'package:flutter_e_learning/presantation/section/view/section_screen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SectionListScreen extends HookConsumerWidget {
  const SectionListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Section')),
      body: Center(
        child: Column(
          children: [
            Text('Hello, SectionListScreen!'),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SectionScreen(),
                  ),
                );
              },
              child: Text("セクション画面へ"),
            ),
          ],
        ),
      ),
    );
  }
}
