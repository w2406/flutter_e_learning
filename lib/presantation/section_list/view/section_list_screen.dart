import 'package:flutter/material.dart';
import 'package:flutter_e_learning/common/constants/route_paths.dart';
import 'package:flutter_e_learning/presantation/section_list/view_model/section_list_screen_view_model.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SectionListScreen extends HookConsumerWidget {
  const SectionListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(sectionListScreenViewModelProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('セクション一覧')),
      body: state.when(
        data: (state) => ListView.builder(
          itemCount: state.sections.length,
          itemBuilder: (context, index) {
            final item = state.sections[index];
            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListTile(
                title: Text(item.sectionTitle),
                subtitle: Text(item.sectionDescription),
                onTap: () {
                  context.pushNamed(
                    AppRoutes.section,
                    pathParameters: {AppRoutes.sectionId: item.sectionId},
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
