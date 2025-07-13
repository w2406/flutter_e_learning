import 'package:flutter/material.dart';
import 'package:flutter_e_learning/common/constants/route_paths.dart';
import 'package:flutter_e_learning/generated/i18n/strings.g.dart';
import 'package:flutter_e_learning/presantation/history_list/view_model/history_list_screen_view_model.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HistoryListScreen extends HookConsumerWidget {
  const HistoryListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(historyListScreenViewModelProvider);
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text(
          context.i18n.historyListStrings.historyListScreen.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF1976D2),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => context.pop(),
        ),
      ),
      body: state.when(
        data: (state) => ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: state.items.length,
          itemBuilder: (context, index) {
            final item = state.items[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: _buildHistoryCard(
                context: context,
                title: item.historyTitle,
                answeredAt: item.answeredAt,
                isCorrect: item.isCorrect,
                onTap: () {
                  context.pushNamed(
                    AppRoutes.history,
                    pathParameters: {AppRoutes.historyId: item.historyId!},
                  );
                },
              ),
            );
          },
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, st) => Center(
          child: Text(
            context.i18n.historyListStrings.historyListScreen.error.replaceAll(
              '{error}',
              e.toString(),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHistoryCard({
    required BuildContext context,
    required String title,
    required String answeredAt,
    required bool isCorrect,
    required VoidCallback onTap,
  }) {
    final Color color = isCorrect ? Colors.green : Colors.red;
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                width: 4,
                height: 40,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF333333),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      context
                          .i18n
                          .historyListStrings
                          .historyListScreen
                          .answeredAt
                          .replaceAll('{answeredAt}', answeredAt),
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  context.i18n.historyListStrings.historyListScreen.isCorrect
                      .replaceAll('{isCorrect}', isCorrect.toString()),
                  style: TextStyle(
                    color: color,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              const Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFFBDBDBD),
                size: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
