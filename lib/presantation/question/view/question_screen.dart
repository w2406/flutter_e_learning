import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class QuestionScreen extends HookConsumerWidget {
  const QuestionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final feedbackVisible = useState(false);
    final scrollController = useScrollController();
    int groupValue = 1;

    void showFeedbackAndScroll() {
      feedbackVisible.value = true;
      Future.delayed(const Duration(milliseconds: 100), () {
        scrollController.animateTo(
          scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeOut,
        );
      });
    }

    return Scaffold(
      appBar: AppBar(title: const Text('問題詳細')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          controller: scrollController,
          children: [
            Text(
              '問題タイトル: FlutterのState管理',
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
            Text('コード回答欄', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            TextField(
              maxLines: 8,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText:
                    '// ここにFlutterコードを入力\nvoid main() {\n  runApp(MyApp());\n}\n',
              ),
            ),
            SizedBox(height: 24),
            Text('選択肢から選ぶ', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Column(
              children: [
                RadioListTile(
                  value: 1,
                  groupValue: groupValue,
                  onChanged: (v) {},
                  title: Text('Provider'),
                ),
                RadioListTile(
                  value: 2,
                  groupValue: groupValue,
                  onChanged: (v) {},
                  title: Text('Riverpod'),
                ),
                RadioListTile(
                  value: 3,
                  groupValue: groupValue,
                  onChanged: (v) {},
                  title: Text('setState'),
                ),
              ],
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: showFeedbackAndScroll,
              child: Text('回答する'),
            ),
            if (feedbackVisible.value) ...[
              Divider(height: 40),
              Text(
                'フィードバック',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                '正誤判定: 正解',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text('改善点: コードの可読性を高めるためにWidgetを分割しましょう。'),
              SizedBox(height: 8),
              Text('推奨される書き方: setStateよりもRiverpodやProviderを使うと良いです。'),
              SizedBox(height: 8),
              Text('模範コード:', style: TextStyle(fontWeight: FontWeight.bold)),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 4),
                padding: EdgeInsets.all(8),
                color: Colors.grey[200],
                child: Text(
                  '''void main() {\n  runApp(MyApp());\n}\n// ...模範コード...''',
                  style: TextStyle(fontFamily: 'monospace'),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
