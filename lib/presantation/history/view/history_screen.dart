import 'package:flutter/material.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:flutter_e_learning/presantation/history/view_model/history_screen_view_model.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HistoryScreen extends HookConsumerWidget {
  const HistoryScreen({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncState = ref.watch(historyScreenViewModelProvider(id));
    return asyncState.when(
      data: (state) => Scaffold(
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
                state.historyTitle,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                '問題文: ${state.historyContent}',
                style: TextStyle(fontSize: 18),
              ),
              Divider(height: 32),
              Text('【あなたの回答】', style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              if (state.answerCode != null && state.answerCode!.isNotEmpty)
                CodeField(
                  controller: CodeController(
                    text: state.answerCode!,
                    language: null, // 必要ならdartなど指定可
                  ),
                  readOnly: true,
                  expands: false,
                  maxLines: null,
                  textStyle: const TextStyle(fontFamily: 'monospace'),
                ),
              // 選択肢回答時のみ「選択肢:」を表示
              if (state.answerChoiceIndex != null &&
                  (state.answerCode == null || state.answerCode!.isEmpty))
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('選択肢:', style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),
                    ...state.choices.map((choice) {
                      final idx = choice.id;
                      final isSelected = state.answerChoiceIndex == idx;
                      final isCorrect = (choice as dynamic).isCorrect ?? false;
                      Color? textColor;
                      if (isCorrect) {
                        textColor = Colors.green;
                      } else if (isSelected) {
                        textColor = Colors.red;
                      }
                      return Row(
                        children: [
                          Icon(
                            isSelected
                                ? Icons.radio_button_checked
                                : Icons.radio_button_unchecked,
                            color: isSelected
                                ? (isCorrect ? Colors.green : Colors.red)
                                : Colors.grey,
                          ),
                          SizedBox(width: 8),
                          Text(
                            choice.label,
                            style: TextStyle(
                              color: textColor,
                              fontWeight: isSelected ? FontWeight.bold : null,
                            ),
                          ),
                          if (isCorrect)
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                '（正解）',
                                style: TextStyle(color: Colors.green),
                              ),
                            ),
                          if (isSelected && !isCorrect)
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                '（あなたの選択）',
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                        ],
                      );
                    }),
                  ],
                ),
              Divider(height: 32),
              Text('【フィードバック】', style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                '正誤判定: ${state.feedbackResult}',
                style: TextStyle(
                  color: state.feedbackResult == '正解'
                      ? Colors.green
                      : Colors.red,
                ),
              ),
              Text('解説: ${state.feedbackExplanation}'),
              Text('改善点: ${state.feedbackAdvice}'),
              SizedBox(height: 4),
              Text('模範コード:', style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              CodeField(
                controller: CodeController(
                  text: state.feedbackSampleCode,
                  language: null, // 必要ならdartなど指定可
                ),
                readOnly: true,
                expands: false,
                maxLines: null,
                textStyle: const TextStyle(fontFamily: 'monospace'),
              ),
            ],
          ),
        ),
      ),
      loading: () =>
          const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (e, st) => Scaffold(body: Center(child: Text('エラー: $e'))),
    );
  }
}
