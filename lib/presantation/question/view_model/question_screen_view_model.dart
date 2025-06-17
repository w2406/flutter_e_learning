import 'package:flutter_e_learning/common/provider/usecase_provider.dart';
import 'package:flutter_e_learning/domain/history/feedback/value_object/feedback.dart';
import 'package:flutter_e_learning/domain/history/history/entity/history.dart';
import 'package:flutter_e_learning/domain/history/history/value_object/answer.dart';
import 'package:flutter_e_learning/domain/progress/solved_question/entity/solved_question.dart';
import 'package:flutter_e_learning/domain/question/question/entity/choice.dart';
import 'package:flutter_e_learning/domain/question/question/entity/question.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'question_screen_state.dart';

part '../../../generated/presantation/question/view_model/question_screen_view_model.g.dart';

@riverpod
class QuestionScreenViewModel extends _$QuestionScreenViewModel {
  @override
  Future<QuestionScreenState> build(String id) async {
    final question = await ref.read(getQuestionUseCaseProvider).execute(id);
    return QuestionScreenState(
      title: question.title,
      questionText: question.questionText,
      codeAnswer: '',
      selectedChoiceIndex: null,
      choices: question is ChoiceQuestion
          ? question.choices.values
                .map((c) => (id: c.id!, label: c.label, isCorrect: c.isCorrect))
                .toList()
          : null,
      isAnswered: false,
      feedbackResult: '',
      feedbackExplanation: '',
      feedbackAdvice: '',
      modelCode: '',
    );
  }

  Future<void> updateFeedback() async {
    final s = state.value!;
    String feedbackExplanation = '';
    String feedbackAdvice = '';
    String modelCode = '';
    bool isCorrect = true;

    if (s.choices == null) {
      // コード入力問題の場合はDifyで正誤判定
      isCorrect = await judgeCodeAnswerCorrectByDify(
        questionText: s.questionText,
        codeAnswer: s.codeAnswer,
      );
    } else {
      // 選択肢問題は従来通りローカル判定
      isCorrect = isCorrectAnswer(s);
    }

    feedbackExplanation = await fetchFeedbackExplanation(
      s.questionText,
      s.choices != null && s.selectedChoiceIndex != null
          ? s.choices![s.selectedChoiceIndex!].label
          : s.codeAnswer,
      s.choices
          ?.map((c) => Choice(id: c.id, label: c.label, isCorrect: c.isCorrect))
          .toList(),
    );
    feedbackAdvice = await fetchFeedbackAdvice(
      s.choices != null && s.selectedChoiceIndex != null
          ? s.choices![s.selectedChoiceIndex!].label
          : s.codeAnswer,
      choices: s.choices
          ?.map((c) => Choice(id: c.id, label: c.label, isCorrect: c.isCorrect))
          .toList(),
      questionText: s.questionText,
    );
    modelCode = await fetchSampleCode(
      questionText: s.questionText,
      answer: s.choices != null && s.selectedChoiceIndex != null
          ? s.choices![s.selectedChoiceIndex!].label
          : s.codeAnswer,
      explanation: feedbackExplanation,
      advice: feedbackAdvice,
      choices: s.choices
          ?.map((c) => Choice(id: c.id, label: c.label, isCorrect: c.isCorrect))
          .toList(),
    );

    state = AsyncValue.data(
      s.copyWith(
        feedbackResult: isCorrect ? '正解' : '不正解',
        feedbackExplanation: feedbackExplanation,
        feedbackAdvice: feedbackAdvice,
        modelCode: modelCode,
      ),
    );
  }

  void updateSelectedChoiceIndex(int? index) {
    state = AsyncValue.data(state.value!.copyWith(selectedChoiceIndex: index));
  }

  void updateCodeAnswer(String code) {
    state = AsyncValue.data(state.value!.copyWith(codeAnswer: code));
  }

  Future<void> saveHistory() async {
    final s = state.value;
    if (s == null) return;
    // Answer生成
    final answer = s.choices != null && s.selectedChoiceIndex != null
        ? ChoiceAnswer(
            choice: Choice(
              id: s.choices![s.selectedChoiceIndex!].id,
              label: s.choices![s.selectedChoiceIndex!].label,
              isCorrect: s.choices![s.selectedChoiceIndex!].isCorrect,
            ),
          )
        : CodeAnswer(code: s.codeAnswer);
    // Feedback生成
    final feedback = Feedback(
      explanation: s.feedbackExplanation,
      advice: s.feedbackAdvice,
      sampleCode: s.modelCode,
    );
    final history = History(
      id: null,
      questionId: id,
      historyTitle: s.title,
      historyContent: s.questionText,
      answer: answer,
      isCorrect: s.feedbackResult == '正解',
      feedback: feedback,
      answeredAt: DateTime.now(),
    );
    await ref.read(addHistoryUseCaseProvider).execute(history);

    // SolvedQuestionエンティティの生成と更新
    await ref
        .read(updateSolvedQuestionUseCaseProvider)
        .execute(
          SolvedQuestion(
            questionId: id,
            solvedAt: DateTime.now(),
            isCorrect: history.isCorrect,
          ),
        );
  }

  static const prerequisitePrompt = """
  【前提】
  - 画面に表示されて、ユーザーが見るので不要な情報(承知しましたなどの返事など)は出力しないでください。
  - 出力は日本語で簡潔に。
  - コードはdart(Flutter)で記述。
""";

  static const feedbackExplanationExample = """
  【レスポンス例】
  整数型に関連する問題です。
  問題文では、整数型の変数を宣言し、値を代入する方法について問われています。
  例えば、Dartでは次のように整数型の変数を宣言し、値を代入できます。
  int number = 10;
  このように「int 型」を使って整数値を扱うことができます。
  """;

  static const feedbackAdviceExample = """
  【レスポンス例】
  あなたの回答は正しいです。
  finalはDartにおいて定数を宣言するためのキーワードで、値を変更できません。
  整数型についてさらに勉強すると、より深い理解が得られます。
  """;

  static const sampleCodeExample = """
  【レスポンス例】
  // 整数型の変数を宣言し、値を代入
  final int number = 10;

  // 変数の値を出力
  print(number);
  """;

  /// Difyから解説を取得する
  Future<String> fetchFeedbackExplanation(
    String questionText,
    String answer,
    List<Choice>? choices,
  ) async {
    final usecase = await ref.read(getDifyChatMessageUseCaseProvider.future);
    String choicesText = '';
    if (choices != null && choices.isNotEmpty) {
      choicesText =
          '\n【選択肢】\n[200C${choices.map((c) => '- ${c.label}').join('\n')}';
    }
    final requestMessage =
        """
$prerequisitePrompt
【問題文】
$questionText$choicesText

【ユーザー回答】
$answer

上記の問題に対して、まず問題の意図やポイントを簡単に説明し、その後ユーザーの回答内容について解説してください。正解不正解も含めてください。
""";
    final message = await usecase.execute(requestMessage);
    return message.value;
  }

  /// Difyからアドバイスを取得する（コード・選択肢両対応、問題文・解説も含める）
  Future<String> fetchFeedbackAdvice(
    String answer, {
    List<Choice>? choices,
    required String questionText,
  }) async {
    final usecase = await ref.read(getDifyChatMessageUseCaseProvider.future);
    String choicesText = '';
    if (choices != null && choices.isNotEmpty) {
      choicesText = '\n【選択肢】\n${choices.map((c) => '- ${c.label}').join('\n')}';
    }
    final questionTextPart = '\n【問題文】\n$questionText';
    final requestMessage =
        """
$questionTextPart
$questionTextPart$choicesText
$prerequisitePrompt
【ユーザーの回答】
$answer

【指示】ユーザーの問題の回答に対して、改善点やより良い考え方・書き方などの今後の成長のためのアドバイスを日本語で200文字以内で出力してください。
""";
    final message = await usecase.execute(requestMessage);
    return message.value;
  }

  /// Difyからサンプルコードを生成する（解説・アドバイスも渡す）
  Future<String> fetchSampleCode({
    required String questionText,
    required String answer,
    required String explanation,
    required String advice,
    List<Choice>? choices,
  }) async {
    String choicesText = '';
    if (choices != null && choices.isNotEmpty) {
      choicesText = '\n【選択肢】\n${choices.map((c) => '- ${c.label}').join('\n')}';
    }
    final usecase = await ref.read(getDifyChatMessageUseCaseProvider.future);
    final requestMessage =
        """
$prerequisitePrompt
【問題文】
$questionText$choicesText

【あなたの回答】
$answer

【解説】
$explanation

【アドバイス】
$advice

「```dart」, 「```」は含めないでください。この問題の模範的なサンプルコードを日本語のコメント付きで出力してください。エディターで表示させるのでmarkdown形式では出力しないでください。
""";
    final message = await usecase.execute(requestMessage);
    return message.value;
  }

  /// 回答が正解かどうかを判定する（選択肢 or コード回答）
  bool isCorrectAnswer(QuestionScreenState s) {
    if (s.choices != null && s.selectedChoiceIndex != null) {
      return s.choices![s.selectedChoiceIndex!].isCorrect;
    }
    // コード回答時の判定ロジック（現状は常にtrue、必要に応じて拡張）
    return true;
  }

  /// Difyで入力コードが問題を正しく解いているか判定する（コード入力問題専用）
  Future<bool> judgeCodeAnswerCorrectByDify({
    required String questionText,
    required String codeAnswer,
  }) async {
    final usecase = await ref.read(getDifyChatMessageUseCaseProvider.future);
    final requestMessage =
        """
$prerequisitePrompt
【問題文】
$questionText

【ユーザーのコード回答】
$codeAnswer

このコードが問題を正しく解いているかどうかを「正解」または「不正解」で1語だけ日本語で出力してください。理由や解説は不要です。
""";
    final message = await usecase.execute(requestMessage);
    final result = message.value.trim();
    return result == '正解';
  }
}
