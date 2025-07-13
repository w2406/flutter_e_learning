///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsJa = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final i18n = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	late final TranslationsHistoryListStringsJa historyListStrings = TranslationsHistoryListStringsJa._(_root);
	late final TranslationsHistoryStringsJa historyStrings = TranslationsHistoryStringsJa._(_root);
	late final TranslationsHomeStringsJa homeStrings = TranslationsHomeStringsJa._(_root);
	late final TranslationsQuestionStringsJa questionStrings = TranslationsQuestionStringsJa._(_root);
	late final TranslationsSectionListStringsJa sectionListStrings = TranslationsSectionListStringsJa._(_root);
	late final TranslationsSectionStringsJa sectionStrings = TranslationsSectionStringsJa._(_root);
	late final TranslationsSettingStringsJa settingStrings = TranslationsSettingStringsJa._(_root);
}

// Path: historyListStrings
class TranslationsHistoryListStringsJa {
	TranslationsHistoryListStringsJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsHistoryListStringsHistoryListScreenJa historyListScreen = TranslationsHistoryListStringsHistoryListScreenJa._(_root);
}

// Path: historyStrings
class TranslationsHistoryStringsJa {
	TranslationsHistoryStringsJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsHistoryStringsHistoryScreenJa historyScreen = TranslationsHistoryStringsHistoryScreenJa._(_root);
}

// Path: homeStrings
class TranslationsHomeStringsJa {
	TranslationsHomeStringsJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsHomeStringsHomeScreenJa homeScreen = TranslationsHomeStringsHomeScreenJa._(_root);
}

// Path: questionStrings
class TranslationsQuestionStringsJa {
	TranslationsQuestionStringsJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsQuestionStringsQuestionScreenJa questionScreen = TranslationsQuestionStringsQuestionScreenJa._(_root);
}

// Path: sectionListStrings
class TranslationsSectionListStringsJa {
	TranslationsSectionListStringsJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsSectionListStringsSectionListScreenJa sectionListScreen = TranslationsSectionListStringsSectionListScreenJa._(_root);
}

// Path: sectionStrings
class TranslationsSectionStringsJa {
	TranslationsSectionStringsJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsSectionStringsSectionScreenJa sectionScreen = TranslationsSectionStringsSectionScreenJa._(_root);
}

// Path: settingStrings
class TranslationsSettingStringsJa {
	TranslationsSettingStringsJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsSettingStringsSettingScreenJa settingScreen = TranslationsSettingStringsSettingScreenJa._(_root);
}

// Path: historyListStrings.historyListScreen
class TranslationsHistoryListStringsHistoryListScreenJa {
	TranslationsHistoryListStringsHistoryListScreenJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => '履歴一覧';
	String get error => 'エラー: {error}';
	String get answeredAt => '解答日時: {answeredAt}';
	String get isCorrect => '正誤: {isCorrect}';
}

// Path: historyStrings.historyScreen
class TranslationsHistoryStringsHistoryScreenJa {
	TranslationsHistoryStringsHistoryScreenJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => '履歴';
	String get question => '問題文:';
	String get yourAnswer => 'あなたの回答';
	String get choiceAnswer => '選択肢から選んだ回答';
	String get judgement => '正誤判定: {result}';
	String get explanation => '【解説】';
	String get advice => '【アドバイス】';
	String get sampleCode => '【サンプルコード】';
}

// Path: homeStrings.homeScreen
class TranslationsHomeStringsHomeScreenJa {
	TranslationsHomeStringsHomeScreenJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Flutter Eラーニング';
	String get setting => '設定';
	String get welcome => 'おかえりなさい！';
	String get continueLearning => '今日も学習を続けましょう';
	String get progress => '学習進捗';
	String get menu => 'メニュー';
	String get sectionList => 'セクション一覧';
	String get sectionListDescription => '学習コンテンツを確認';
	String get historyList => '学習履歴';
	String get historyListDescription => '過去の学習記録を確認';
	String get progressError => '進捗取得エラー';
}

// Path: questionStrings.questionScreen
class TranslationsQuestionStringsQuestionScreenJa {
	TranslationsQuestionStringsQuestionScreenJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => '問題';
	String get yourAnswer => 'あなたの回答';
	String get correct => '正解';
	String get incorrect => '不正解';
	String get explanation => '解説';
	String get advice => 'アドバイス';
	String get sampleCode => 'サンプルコード';
	String get choiceAnswer => '選択肢から選んでください';
	String get judgement => '判定: {result}';
	String get error => 'エラー: {error}';
}

// Path: sectionListStrings.sectionListScreen
class TranslationsSectionListStringsSectionListScreenJa {
	TranslationsSectionListStringsSectionListScreenJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'セクション一覧';
	String get error => 'エラー: {error}';
}

// Path: sectionStrings.sectionScreen
class TranslationsSectionStringsSectionScreenJa {
	TranslationsSectionStringsSectionScreenJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'セクション';
	String get error => 'エラー: {error}';
}

// Path: settingStrings.settingScreen
class TranslationsSettingStringsSettingScreenJa {
	TranslationsSettingStringsSettingScreenJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => '設定';
	String get apiSetting => 'API設定';
	String get apiKey => 'APIキー';
	String get apiKeyHint => 'difyのAPIキーを入力する';
	String get apiKeyApplied => 'APIキーを適用しました: {apiKey}';
	String get error => 'エラー: {error}';
	String get applyApiKey => 'APIキーを適用';
	String get other => 'その他';
	String get loadQuestionFile => '問題ファイルを読み込む';
	String get loadQuestionFileSubtitle => 'Android/iOSのみ';
	String get loadQuestionFileSnack => '問題ファイル「{file}」を読み込みました';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'historyListStrings.historyListScreen.title': return '履歴一覧';
			case 'historyListStrings.historyListScreen.error': return 'エラー: {error}';
			case 'historyListStrings.historyListScreen.answeredAt': return '解答日時: {answeredAt}';
			case 'historyListStrings.historyListScreen.isCorrect': return '正誤: {isCorrect}';
			case 'historyStrings.historyScreen.title': return '履歴';
			case 'historyStrings.historyScreen.question': return '問題文:';
			case 'historyStrings.historyScreen.yourAnswer': return 'あなたの回答';
			case 'historyStrings.historyScreen.choiceAnswer': return '選択肢から選んだ回答';
			case 'historyStrings.historyScreen.judgement': return '正誤判定: {result}';
			case 'historyStrings.historyScreen.explanation': return '【解説】';
			case 'historyStrings.historyScreen.advice': return '【アドバイス】';
			case 'historyStrings.historyScreen.sampleCode': return '【サンプルコード】';
			case 'homeStrings.homeScreen.title': return 'Flutter Eラーニング';
			case 'homeStrings.homeScreen.setting': return '設定';
			case 'homeStrings.homeScreen.welcome': return 'おかえりなさい！';
			case 'homeStrings.homeScreen.continueLearning': return '今日も学習を続けましょう';
			case 'homeStrings.homeScreen.progress': return '学習進捗';
			case 'homeStrings.homeScreen.menu': return 'メニュー';
			case 'homeStrings.homeScreen.sectionList': return 'セクション一覧';
			case 'homeStrings.homeScreen.sectionListDescription': return '学習コンテンツを確認';
			case 'homeStrings.homeScreen.historyList': return '学習履歴';
			case 'homeStrings.homeScreen.historyListDescription': return '過去の学習記録を確認';
			case 'homeStrings.homeScreen.progressError': return '進捗取得エラー';
			case 'questionStrings.questionScreen.title': return '問題';
			case 'questionStrings.questionScreen.yourAnswer': return 'あなたの回答';
			case 'questionStrings.questionScreen.correct': return '正解';
			case 'questionStrings.questionScreen.incorrect': return '不正解';
			case 'questionStrings.questionScreen.explanation': return '解説';
			case 'questionStrings.questionScreen.advice': return 'アドバイス';
			case 'questionStrings.questionScreen.sampleCode': return 'サンプルコード';
			case 'questionStrings.questionScreen.choiceAnswer': return '選択肢から選んでください';
			case 'questionStrings.questionScreen.judgement': return '判定: {result}';
			case 'questionStrings.questionScreen.error': return 'エラー: {error}';
			case 'sectionListStrings.sectionListScreen.title': return 'セクション一覧';
			case 'sectionListStrings.sectionListScreen.error': return 'エラー: {error}';
			case 'sectionStrings.sectionScreen.title': return 'セクション';
			case 'sectionStrings.sectionScreen.error': return 'エラー: {error}';
			case 'settingStrings.settingScreen.title': return '設定';
			case 'settingStrings.settingScreen.apiSetting': return 'API設定';
			case 'settingStrings.settingScreen.apiKey': return 'APIキー';
			case 'settingStrings.settingScreen.apiKeyHint': return 'difyのAPIキーを入力する';
			case 'settingStrings.settingScreen.apiKeyApplied': return 'APIキーを適用しました: {apiKey}';
			case 'settingStrings.settingScreen.error': return 'エラー: {error}';
			case 'settingStrings.settingScreen.applyApiKey': return 'APIキーを適用';
			case 'settingStrings.settingScreen.other': return 'その他';
			case 'settingStrings.settingScreen.loadQuestionFile': return '問題ファイルを読み込む';
			case 'settingStrings.settingScreen.loadQuestionFileSubtitle': return 'Android/iOSのみ';
			case 'settingStrings.settingScreen.loadQuestionFileSnack': return '問題ファイル「{file}」を読み込みました';
			default: return null;
		}
	}
}

