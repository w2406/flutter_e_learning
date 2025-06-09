import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingScreen extends HookConsumerWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final apiKeyController = TextEditingController();
    final appVersion = '1.0.0'; // 仮のバージョン
    return Scaffold(
      appBar: AppBar(title: const Text('設定')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('APIキー', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            TextField(
              controller: apiKeyController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'APIキーを入力',
              ),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                // APIキー適用処理をここに実装
                final apiKey = apiKeyController.text;
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('APIキーを適用しました: $apiKey')),
                );
              },
              child: Text('APIキーを適用'),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // 問題ファイル読み込み処理をここに実装
              },
              child: Text('問題ファイルを読み込む'),
            ),
            SizedBox(height: 32),
            Text(
              'バージョン: $appVersion',
              style: TextStyle(color: Colors.grey[700]),
            ),
          ],
        ),
      ),
    );
  }
}
