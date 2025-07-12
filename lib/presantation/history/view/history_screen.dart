import 'package:flutter/material.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:flutter_e_learning/presantation/history/view_model/history_screen_view_model.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:go_router/go_router.dart';
import 'package:highlight/languages/dart.dart' as Mode;
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HistoryScreen extends HookConsumerWidget {
  const HistoryScreen({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncState = ref.watch(historyScreenViewModelProvider(id));
    return asyncState.when(
      data: (state) => Scaffold(
        backgroundColor: Colors.grey[50],
        appBar: AppBar(
          title: const Text(
            '履歴',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: const Color(0xFF1976D2),
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => context.pop(),
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // タイトル
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      state.historyTitle,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF333333),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      '問題文:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF666666),
                      ),
                    ),
                    const SizedBox(height: 8),
                    MarkdownBody(data: state.historyContent),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              // 回答セクション
              if (state.answerCode != null && state.answerCode!.isNotEmpty) ...[
                const Text(
                  'あなたの回答',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF333333),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF2D2D2D),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: CodeField(
                    controller: CodeController(
                      text: state.answerCode!,
                      language: Mode.dart,
                    ),
                    readOnly: true,
                    expands: false,
                    maxLines: null,
                    textStyle: const TextStyle(
                      fontFamily: 'monospace',
                      color: Colors.white,
                      fontSize: 14,
                    ),
                    gutterStyle: GutterStyle.none,
                  ),
                ),
              ] else if (state.answerChoiceIndex != null) ...[
                const Text(
                  '選択肢から選んだ回答',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF333333),
                  ),
                ),
                const SizedBox(height: 16),
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
                  return Card(
                    elevation: isSelected ? 4 : 1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(
                        color: isSelected
                            ? (isCorrect ? Colors.green : Colors.red)
                            : Colors.transparent,
                        width: 2,
                      ),
                    ),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(8),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: isSelected
                                      ? (isCorrect ? Colors.green : Colors.red)
                                      : Colors.grey[400]!,
                                  width: 2,
                                ),
                                color: isSelected
                                    ? (isCorrect ? Colors.green : Colors.red)
                                    : Colors.transparent,
                              ),
                              child: isSelected
                                  ? const Icon(
                                      Icons.check,
                                      color: Colors.white,
                                      size: 16,
                                    )
                                  : null,
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Text(
                                choice.label,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: isSelected
                                      ? FontWeight.w600
                                      : FontWeight.normal,
                                  color: textColor ?? const Color(0xFF333333),
                                ),
                              ),
                            ),
                            if (isCorrect)
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: const Text(
                                  '正解',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            if (isSelected && !isCorrect)
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: const Text(
                                  'あなたの選択',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ],
              const SizedBox(height: 32),
              // フィードバック
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: state.feedbackResult == '正解'
                        ? Colors.green
                        : Colors.red,
                    width: 2,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          state.feedbackResult == '正解'
                              ? Icons.check_circle
                              : Icons.cancel,
                          color: state.feedbackResult == '正解'
                              ? Colors.green
                              : Colors.red,
                          size: 24,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '正誤判定: ${state.feedbackResult}',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: state.feedbackResult == '正解'
                                ? Colors.green
                                : Colors.red,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      '【解説】',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF333333),
                      ),
                    ),
                    const SizedBox(height: 8),
                    MarkdownBody(data: state.feedbackExplanation),
                    const SizedBox(height: 16),
                    const Text(
                      '【アドバイス】',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF333333),
                      ),
                    ),
                    const SizedBox(height: 8),
                    MarkdownBody(data: state.feedbackAdvice),
                    const SizedBox(height: 16),
                    const Text(
                      '【サンプルコード】',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF333333),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF2D2D2D),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: CodeField(
                        controller: CodeController(
                          text: state.feedbackSampleCode,
                          language: Mode.dart,
                        ),
                        readOnly: true,
                        expands: false,
                        maxLines: null,
                        textStyle: const TextStyle(
                          fontFamily: 'monospace',
                          color: Colors.white,
                          fontSize: 14,
                        ),
                        gutterStyle: GutterStyle.none,
                      ),
                    ),
                  ],
                ),
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
