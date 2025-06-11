import 'package:flutter/material.dart';
import 'package:flutter_e_learning/common/constants/route_paths.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SectionListScreen extends HookConsumerWidget {
  const SectionListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('セクション一覧')),
      body: ListView.builder(
        itemCount: 10, // 仮のセクション数
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              title: Text('セクション${index + 1}'),
              subtitle: Text('セクション${index + 1}の説明'),
              onTap: () {
                context.push(AppRoutes.sectionPath);
              },
            ),
          );
        },
      ),
    );
  }
}
