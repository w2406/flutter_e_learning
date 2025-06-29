import 'package:flutter/material.dart';
import 'package:flutter_e_learning/common/constants/route_paths.dart';
import 'package:flutter_e_learning/common/provider/common_provider.dart';
import 'package:flutter_e_learning/presantation/home/view_model/home_screen_view_model.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeScreenViewModelProvider);

    useEffect(() {
      final observer = _RouteAwareHelper(() {
        ref.invalidate(homeScreenViewModelProvider);
      });
      WidgetsBinding.instance.addPostFrameCallback((_) {
        observer.subscribe(context);
      });

      return () {
        observer.unsubscribe();
      };
    }, []);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Eラーニング'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: '設定',
            onPressed: () {
              context.pushNamed(AppRoutes.setting);
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 学習進捗率
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: state.when(
                data: (state) => Column(
                  children: [
                    Text(
                      '学習進捗率',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    LinearProgressIndicator(
                      value: state.progress / 100,
                      minHeight: 12,
                    ),
                    SizedBox(height: 4),
                    Text(
                      '${state.progress.toStringAsFixed(1)}%',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                loading: () => const CircularProgressIndicator(),
                error: (e, st) => Text('進捗取得エラー'),
              ),
            ),
            // セクション一覧画面へ遷移ボタン
            ElevatedButton(
              onPressed: () {
                context.pushNamed(AppRoutes.sectionList);
              },
              child: Text("セクション一覧画面へ"),
            ),
            SizedBox(height: 16),
            // 履歴一覧画面へ遷移ボタン
            ElevatedButton(
              onPressed: () {
                context.pushNamed(AppRoutes.historyList);
              },
              child: Text("履歴一覧画面へ"),
            ),
          ],
        ),
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
