import 'package:flutter/material.dart';
import 'package:flutter_e_learning/common/constants/route_paths.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SectionScreen extends HookConsumerWidget {
  const SectionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('問題リスト')),
      body: ListView.builder(
        itemCount: 5, // 仮の問題数
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              title: Text('問題${index + 1}'),
              subtitle: Text('問題${index + 1}の説明'),
              onTap: () {
                context.push(AppRoutes.questionPath);
              },
            ),
          );
        },
      ),
    );
  }
}
