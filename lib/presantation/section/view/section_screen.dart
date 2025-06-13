import 'package:flutter/material.dart';
import 'package:flutter_e_learning/common/constants/route_paths.dart';
import 'package:flutter_e_learning/presantation/section/view_model/section_screen_view_model.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SectionScreen extends HookConsumerWidget {
  const SectionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(sectionScreenViewModelProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('セクション')),
      body: state.when(
        data: (state) => ListView.builder(
          itemCount: state.questions.length,
          itemBuilder: (context, index) {
            final item = state.questions[index];
            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListTile(
                title: Text(item.title),
                subtitle: Text(item.questionText),
                onTap: () {
                  context.pushNamed(
                    AppRoutes.question,
                    pathParameters: {AppRoutes.questionId: item.questionId},
                  );
                },
              ),
            );
          },
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, st) => Center(child: Text('エラー: $e')),
      ),
    );
  }
}
