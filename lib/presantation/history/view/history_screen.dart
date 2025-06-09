import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HistoryScreen extends HookConsumerWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('History'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              '解いた問題: FlutterのState管理',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '解説: Flutterで状態管理を行う方法について学びます。',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              '課題文: 以下のカウンターアプリに状態管理を追加してください。',
              style: TextStyle(fontSize: 16),
            ),
            Divider(height: 32),
            Text('【あなたの回答】', style: TextStyle(fontWeight: FontWeight.bold)),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 4),
              padding: EdgeInsets.all(8),
              color: Colors.grey[100],
              child: Text(
                '// 回答したFlutterコード例\nvoid main() {\n  runApp(MyApp());\n}\n',
              ),
            ),
            Text('選択肢: Provider', style: TextStyle(color: Colors.blue)),
            Divider(height: 32),
            Text('【フィードバック】', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('正誤判定: 正解', style: TextStyle(color: Colors.green)),
            Text('改善点: コードの可読性を高めるためにWidgetを分割しましょう。'),
            Text('推奨: setStateよりもRiverpodやProviderを使うと良いです。'),
            SizedBox(height: 4),
            Text('模範コード:', style: TextStyle(fontWeight: FontWeight.bold)),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 2),
              padding: EdgeInsets.all(8),
              color: Colors.grey[200],
              child: Text(
                '''void main() {\n  runApp(MyApp());\n}\n// ...模範コード...''',
                style: TextStyle(fontFamily: 'monospace'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
