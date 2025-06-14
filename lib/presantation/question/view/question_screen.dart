import 'package:flutter/material.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:flutter_e_learning/presantation/question/view_model/question_screen_view_model.dart';
import 'package:flutter_highlight/themes/monokai-sublime.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:highlight/languages/dart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class QuestionScreen extends HookConsumerWidget {
  const QuestionScreen(this.id, {super.key});

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(questionScreenViewModelProvider(id));
    final feedbackVisible = useState(false);
    final scrollController = useScrollController();
    final codeController = useMemoized(
      () => CodeController(text: '', language: dart),
    );
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

    return state.when(
      data: (state) => Scaffold(
        appBar: AppBar(title: const Text('問題詳細')),
        body: CodeTheme(
          data: CodeThemeData(styles: monokaiSublimeTheme),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              controller: scrollController,
              children: [
                Text(
                  state.title,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  '問題文: ${state.questionText}',
                  style: TextStyle(fontSize: 18),
                ),
                Divider(height: 32),
                // QuestionScreenState.choicesがnullかどうかで分岐
                if (state.choices != null) ...[
                  Text(
                    '選択肢から選ぶ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Column(
                    children: List.generate(
                      state.choices!.length,
                      (i) => RadioListTile(
                        value: i,
                        groupValue: groupValue,
                        onChanged: (v) {},
                        title: Text(state.choices![i]),
                      ),
                    ),
                  ),
                ] else ...[
                  Text('コード回答欄', style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  SingleChildScrollView(
                    child: CodeField(controller: codeController),
                  ),
                ],
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
                    '正誤判定: ${state.feedbackResult}',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text('改善点: ${state.feedbackAdvice}'),
                  SizedBox(height: 8),
                  Text('推奨される書き方: ${state.feedbackRecommendation}'),
                  SizedBox(height: 8),
                  Text('模範コード:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 4),
                    padding: EdgeInsets.all(8),
                    color: Colors.grey[200],
                    child: Text(
                      state.modelCode,
                      style: TextStyle(fontFamily: 'monospace'),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
      loading: () =>
          const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (e, st) => Scaffold(body: Center(child: Text('エラー: $e'))),
    );
  }
}
