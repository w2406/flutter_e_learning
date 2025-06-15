import 'package:flutter/material.dart';
import 'package:flutter_e_learning/presantation/setting/view_model/setting_screen_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingScreen extends HookConsumerWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(settingScreenViewModelProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('設定'), centerTitle: true),
      body: state.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, st) => Center(child: Text('エラー: $e')),
        data: (data) {
          final apiKeyController = TextEditingController(text: data.apiKey);
          return Padding(
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
                    final apiKey = apiKeyController.text;
                    ref
                        .read(settingScreenViewModelProvider.notifier)
                        .updateApiKey(apiKey);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('APIキーを適用しました: $apiKey')),
                    );
                  },
                  child: Text('APIキーを適用'),
                ),
                SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () async {
                    final confirmed = await showDialog<bool>(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('確認'),
                        content: Text(
                          '問題ファイルを読み込みますか？すべての現在の問題・履歴は失われて、新しい問題が読み込まれます。',
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(false),
                            child: Text('キャンセル'),
                          ),
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(true),
                            child: Text('OK'),
                          ),
                        ],
                      ),
                    );
                    if (confirmed == true) {
                      ref
                          .read(settingScreenViewModelProvider.notifier)
                          .loadQuestionFile();
                    }
                  },
                  child: Text('問題ファイルを読み込む'),
                ),
                SizedBox(height: 32),
                Text(
                  'バージョン: ${data.appVersion}',
                  style: TextStyle(color: Colors.grey[700]),
                ),
                SizedBox(height: 16),
                Text(
                  data.isFileLoaded ? 'ファイル読込済み' : 'ファイル未読込',
                  style: TextStyle(
                    color: data.isFileLoaded ? Colors.green : Colors.red,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
