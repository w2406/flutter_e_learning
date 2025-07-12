import 'package:flutter/material.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:flutter_e_learning/presantation/question/view_model/question_screen_state.dart';
import 'package:flutter_e_learning/presantation/question/view_model/question_screen_view_model.dart';
// import 'package:flutter_highlight/themes/monokai-sublime.dart';
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
    final codeController = useMemoized(
      () => CodeController(text: '', language: dart),
    );
    final isLoading = useState(false);
    final scrollController = useScrollController();

    void onAnswer(QuestionScreenState state) async {
      if (isLoading.value) return;
      isLoading.value = true;
      try {
        if (state.choices == null) {
          ref
              .read(questionScreenViewModelProvider(id).notifier)
              .updateCodeAnswer(codeController.text);
          // 入力待ち状態を解除（フォーカスを外す）
          FocusScope.of(context).unfocus();
        }
        await ref
            .read(questionScreenViewModelProvider(id).notifier)
            .updateFeedback();
        await ref
            .read(questionScreenViewModelProvider(id).notifier)
            .saveHistory();
      } finally {
        isLoading.value = false;
      }
    }

    return state.when(
      data: (state) => Stack(
        children: [
          Scaffold(
            backgroundColor: Colors.grey[50],
            appBar: AppBar(
              title: const Text(
                '問題',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              backgroundColor: const Color(0xFF1976D2),
              elevation: 0,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            body: SingleChildScrollView(
              controller: scrollController,
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 問題タイトル
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
                          state.title,
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
                        Text(
                          state.questionText,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Color(0xFF333333),
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  // 回答セクション
                  if (state.choices != null) ...[
                    const Text(
                      '選択肢から選ぶ',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF333333),
                      ),
                    ),
                    const SizedBox(height: 16),
                    ...List.generate(
                      state.choices!.length,
                      (i) => Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: _OptionCard(
                          index: i,
                          text: state.choices![i].label,
                          isSelected: state.selectedChoiceIndex == i,
                          onTap: () {
                            ref
                                .read(
                                  questionScreenViewModelProvider(id).notifier,
                                )
                                .updateSelectedChoiceIndex(i);
                          },
                        ),
                      ),
                    ),
                  ] else ...[
                    const Text(
                      'コード回答欄',
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
                      padding: const EdgeInsets.all(8),
                      child: CodeField(
                        controller: codeController,
                        minLines: 8,
                        maxLines: 16,
                        textStyle: const TextStyle(
                          fontFamily: 'monospace',
                          color: Colors.white,
                          fontSize: 14,
                        ),
                        expands: false,
                        readOnly: false,
                        background: Colors.transparent,
                        // gutterStyle: GutterStyle.none,
                      ),
                    ),
                  ],
                  const SizedBox(height: 32),
                  // 回答ボタン
                  SizedBox(
                    width: double.infinity,
                    child: HookBuilder(
                      builder: (context) {
                        final codeText = useListenable(codeController).text;
                        final isButtonEnabled =
                            (state.choices != null &&
                                state.selectedChoiceIndex != null) ||
                            (state.choices == null &&
                                codeText.trim().isNotEmpty);
                        return ElevatedButton(
                          onPressed: isButtonEnabled
                              ? () => onAnswer(state)
                              : null,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF1976D2),
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            disabledBackgroundColor: Colors.grey[300],
                          ),
                          child: const Text(
                            '回答する',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  if (state.feedbackResult.isNotEmpty) ...[
                    const SizedBox(height: 32),
                    _FeedbackSection(state: state),
                  ],
                ],
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

class _OptionCard extends StatelessWidget {
  final int index;
  final String text;
  final bool isSelected;
  final VoidCallback onTap;
  const _OptionCard({
    required this.index,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: isSelected ? 4 : 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(
          color: isSelected ? const Color(0xFF1976D2) : Colors.transparent,
          width: 2,
        ),
      ),
      child: InkWell(
        onTap: onTap,
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
                        ? const Color(0xFF1976D2)
                        : Colors.grey[400]!,
                    width: 2,
                  ),
                  color: isSelected
                      ? const Color(0xFF1976D2)
                      : Colors.transparent,
                ),
                child: isSelected
                    ? const Icon(Icons.check, color: Colors.white, size: 16)
                    : null,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: isSelected
                        ? FontWeight.w600
                        : FontWeight.normal,
                    color: isSelected
                        ? const Color(0xFF1976D2)
                        : const Color(0xFF333333),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FeedbackSection extends StatelessWidget {
  final QuestionScreenState state;
  const _FeedbackSection({required this.state});

  @override
  Widget build(BuildContext context) {
    final isCorrect = state.feedbackResult == '正解';
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isCorrect ? Colors.green : Colors.red,
          width: 2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                isCorrect ? Icons.check_circle : Icons.cancel,
                color: isCorrect ? Colors.green : Colors.red,
                size: 24,
              ),
              const SizedBox(width: 8),
              Text(
                '正誤判定: ${state.feedbackResult}',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: isCorrect ? Colors.green : Colors.red,
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
          MarkdownBody(data: ''),
          MarkdownBody(data: state.feedbackExplanation),
          if (isCorrect) ...[
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  const Icon(Icons.thumb_up, color: Colors.green, size: 20),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: Text(
                      '完璧です！非常に簡潔で、Dartの標準的な書き方に沿っています。',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.green,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
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
            width: double.infinity,
            margin: const EdgeInsets.only(top: 4),
            child: CodeField(
              controller: CodeController(text: state.modelCode),
              gutterStyle: GutterStyle.none,
              readOnly: true,
              expands: false,
              minLines: 6,
              maxLines: 20,
            ),
          ),
        ],
      ),
    );
  }
}
