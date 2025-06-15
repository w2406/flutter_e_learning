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
      appBar: AppBar(title: const Text('セクション')),
      body: state.when(
        data: (state) => ListView.builder(
          itemCount: state.questions.length,
          itemBuilder: (context, index) {
            final item = state.questions[index];
            final isCorrect = item.isCorrect;
            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListTile(
                title: Text(item.title),
                subtitle: Text(item.questionText),
                trailing: isCorrect == true
                    ? Icon(Icons.circle_outlined, size: 25, color: Colors.green)
                    : isCorrect == false
                    ? Icon(Icons.close, size: 25, color: Colors.red)
                    : null,
                onTap: () {
                  context.pushNamed(
                    AppRoutes.question,
                    pathParameters: {
                      AppRoutes.sectionId: id,
                      AppRoutes.questionId: item.questionId,
                    },
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
