import 'package:flutter/material.dart';
import 'package:flutter_e_learning/common/route_paths.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SectionScreen extends HookConsumerWidget {
  const SectionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Section'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Hello, SectionScreen!'),
            ElevatedButton(
              onPressed: () {
                context.push(AppRoutes.questionPath);
              },
              child: Text("問題画面へ"),
            ),
          ],
        ),
      ),
    );
  }
}
