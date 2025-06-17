import 'package:flutter/material.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:flutter_e_learning/presantation/question/view_model/question_screen_state.dart';
import 'package:flutter_e_learning/presantation/question/view_model/question_screen_view_model.dart';
import 'package:flutter_highlight/themes/monokai-sublime.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:highlight/languages/dart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class QuestionScreen extends HookConsumerWidget {
  const QuestionScreen(this.id, {super.key});

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(questionScreenViewModelProvider(id));
    final scrollController = useScrollController();
    final codeController = useMemoized(
      () => CodeController(text: '', language: dart),
    );
    final isLoading = useState(false);

    void showFeedbackAndScroll() {
      Future.delayed(const Duration(milliseconds: 100), () {
        scrollController.animateTo(
          scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeOut,
        );
      });
    }

    void onAnswer(QuestionScreenState state) async {
      if (isLoading.value) return;
      isLoading.value = true;
      try {
        if (state.choices == null) {
          ref
              .read(questionScreenViewModelProvider(id).notifier)
              .updateCodeAnswer(codeController.text);
        }
        // フィードバックを更新
        await ref
            .read(questionScreenViewModelProvider(id).notifier)
            .updateFeedback();
        await ref
            .read(questionScreenViewModelProvider(id).notifier)
            .saveHistory();
        showFeedbackAndScroll();
      } finally {
        isLoading.value = false;
      }
    }

    return state.when(
      data: (state) => Stack(
        children: [
          Scaffold(
            appBar: AppBar(title: const Text('問題'), centerTitle: true),
            body: CodeTheme(
              data: CodeThemeData(styles: monokaiSublimeTheme),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView(
                  controller: scrollController,
                  children: [
                    Text(
                      state.title,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
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
                          (i) => RadioListTile<int>(
                            value: i,
                            groupValue: state.selectedChoiceIndex,
                            onChanged: (v) {
                              ref
                                  .read(
                                    questionScreenViewModelProvider(
                                      id,
                                    ).notifier,
                                  )
                                  .updateSelectedChoiceIndex(v);
                            },
                            title: Text(state.choices![i].label),
                          ),
                        ),
                      ),
                    ] else ...[
                      Text(
                        'コード回答欄',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      SingleChildScrollView(
                        child: CodeField(controller: codeController),
                      ),
                    ],
                    SizedBox(height: 32),
                    ElevatedButton(
                      onPressed:
                          (state.choices != null &&
                                  state.selectedChoiceIndex != null) ||
                              state.choices == null
                          ? () => onAnswer(state)
                          : null,
                      child: Text('回答する'),
                    ),
                    if (state.feedbackResult.isNotEmpty) ...[
                      Divider(height: 40),
                      Text(
                        '正誤判定: ${state.feedbackResult}',
                        style: TextStyle(
                          color: state.feedbackResult == '正解'
                              ? Colors.green
                              : Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '【解説】',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 8),
                      MarkdownBody(data: state.feedbackExplanation),
                      SizedBox(height: 8),
                      Text(
                        '【アドバイス】',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      MarkdownBody(data: state.feedbackAdvice),
                      SizedBox(height: 8),
                      Text(
                        '【サンプルコード】',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 4),
                        child: CodeField(
                          controller: CodeController(
                            text: state.modelCode,
                            language: dart,
                          ),
                          gutterStyle: GutterStyle.none,
                          readOnly: true,
                          expands: false,
                          minLines: 6,
                          maxLines: 20,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),
          if (isLoading.value)
            Container(
              color: Colors.black.withOpacity(0.3),
              child: const Center(child: CircularProgressIndicator()),
            ),
        ],
      ),
      loading: () =>
          const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (e, st) => Scaffold(body: Center(child: Text('エラー: $e'))),
    );
  }
}
