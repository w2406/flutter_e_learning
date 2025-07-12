import 'package:flutter/material.dart';
import 'package:flutter_e_learning/common/constants/route_paths.dart';
import 'package:flutter_e_learning/common/provider/common_provider.dart';
import 'package:flutter_e_learning/presantation/section/view_model/section_screen_view_model.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SectionScreen extends HookConsumerWidget {
  final String id;
  const SectionScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(sectionScreenViewModelProvider(id));

    useEffect(() {
      final observer = _RouteAwareHelper(() {
        ref.invalidate(sectionScreenViewModelProvider(id));
      });
      WidgetsBinding.instance.addPostFrameCallback((_) {
        observer.subscribe(context);
      });

      return () {
        observer.unsubscribe();
      };
    }, []);

    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: const Text(
          'セクション',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: const Color(0xFF1976D2),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: state.when(
        data: (state) => SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                state.sectionTitle,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF333333),
                ),
              ),
              const SizedBox(height: 24),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: state.questions.length,
                itemBuilder: (context, index) {
                  final item = state.questions[index];
                  final isCorrect = item.isCorrect;
                  return Card(
                    margin: const EdgeInsets.only(bottom: 12),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(12),
                      onTap: () {
                        context.pushNamed(
                          AppRoutes.question,
                          pathParameters: {
                            AppRoutes.sectionId: id,
                            AppRoutes.questionId: item.questionId,
                          },
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: [
                            Container(
                              width: 4,
                              height: 40,
                              decoration: BoxDecoration(
                                color: isCorrect == true
                                    ? Colors.green
                                    : isCorrect == false
                                    ? Colors.red
                                    : Colors.grey[300],
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item.title,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF333333),
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    item.questionText,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[600],
                                      height: 1.4,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            if (isCorrect == true)
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Icon(
                                  Icons.check,
                                  color: Colors.green,
                                  size: 16,
                                ),
                              ),
                            if (isCorrect == false)
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.red.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Icon(
                                  Icons.close,
                                  color: Colors.red,
                                  size: 16,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, st) => Center(child: Text('エラー: $e')),
      ),
    );
  }
}

// 🔧 表示イベントを受け取るクラス
class _RouteAwareHelper extends RouteAware {
  final VoidCallback onShow;
  ModalRoute? _route;

  _RouteAwareHelper(this.onShow);

  void subscribe(BuildContext context) {
    _route = ModalRoute.of(context);
    if (_route != null) {
      routeObserver.subscribe(this, _route!);
    }
  }

  void unsubscribe() {
    if (_route != null) {
      routeObserver.unsubscribe(this);
    }
  }

  @override
  void didPopNext() => onShow(); // 戻ってきたとき
}
