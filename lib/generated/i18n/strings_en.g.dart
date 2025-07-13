///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsEn implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsEn _root = this; // ignore: unused_field

	@override 
	TranslationsEn $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsEn(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsHistoryListStringsEn historyListStrings = _TranslationsHistoryListStringsEn._(_root);
	@override late final _TranslationsHistoryStringsEn historyStrings = _TranslationsHistoryStringsEn._(_root);
	@override late final _TranslationsHomeStringsEn homeStrings = _TranslationsHomeStringsEn._(_root);
	@override late final _TranslationsQuestionStringsEn questionStrings = _TranslationsQuestionStringsEn._(_root);
	@override late final _TranslationsSectionListStringsEn sectionListStrings = _TranslationsSectionListStringsEn._(_root);
	@override late final _TranslationsSectionStringsEn sectionStrings = _TranslationsSectionStringsEn._(_root);
	@override late final _TranslationsSettingStringsEn settingStrings = _TranslationsSettingStringsEn._(_root);
}

// Path: historyListStrings
class _TranslationsHistoryListStringsEn implements TranslationsHistoryListStringsJa {
	_TranslationsHistoryListStringsEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHistoryListStringsHistoryListScreenEn historyListScreen = _TranslationsHistoryListStringsHistoryListScreenEn._(_root);
}

// Path: historyStrings
class _TranslationsHistoryStringsEn implements TranslationsHistoryStringsJa {
	_TranslationsHistoryStringsEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHistoryStringsHistoryScreenEn historyScreen = _TranslationsHistoryStringsHistoryScreenEn._(_root);
}

// Path: homeStrings
class _TranslationsHomeStringsEn implements TranslationsHomeStringsJa {
	_TranslationsHomeStringsEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeStringsHomeScreenEn homeScreen = _TranslationsHomeStringsHomeScreenEn._(_root);
}

// Path: questionStrings
class _TranslationsQuestionStringsEn implements TranslationsQuestionStringsJa {
	_TranslationsQuestionStringsEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsQuestionStringsQuestionScreenEn questionScreen = _TranslationsQuestionStringsQuestionScreenEn._(_root);
}

// Path: sectionListStrings
class _TranslationsSectionListStringsEn implements TranslationsSectionListStringsJa {
	_TranslationsSectionListStringsEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSectionListStringsSectionListScreenEn sectionListScreen = _TranslationsSectionListStringsSectionListScreenEn._(_root);
}

// Path: sectionStrings
class _TranslationsSectionStringsEn implements TranslationsSectionStringsJa {
	_TranslationsSectionStringsEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSectionStringsSectionScreenEn sectionScreen = _TranslationsSectionStringsSectionScreenEn._(_root);
}

// Path: settingStrings
class _TranslationsSettingStringsEn implements TranslationsSettingStringsJa {
	_TranslationsSettingStringsEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSettingStringsSettingScreenEn settingScreen = _TranslationsSettingStringsSettingScreenEn._(_root);
}

// Path: historyListStrings.historyListScreen
class _TranslationsHistoryListStringsHistoryListScreenEn implements TranslationsHistoryListStringsHistoryListScreenJa {
	_TranslationsHistoryListStringsHistoryListScreenEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'History List';
	@override String get error => 'Error: {error}';
	@override String get answeredAt => 'Answered at: {answeredAt}';
	@override String get isCorrect => 'Correct: {isCorrect}';
}

// Path: historyStrings.historyScreen
class _TranslationsHistoryStringsHistoryScreenEn implements TranslationsHistoryStringsHistoryScreenJa {
	_TranslationsHistoryStringsHistoryScreenEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'History';
	@override String get question => 'Question:';
	@override String get yourAnswer => 'Your Answer';
	@override String get choiceAnswer => 'Selected Answer';
	@override String get judgement => 'Result: {result}';
	@override String get explanation => '[Explanation]';
	@override String get advice => '[Advice]';
	@override String get sampleCode => '[Sample Code]';
}

// Path: homeStrings.homeScreen
class _TranslationsHomeStringsHomeScreenEn implements TranslationsHomeStringsHomeScreenJa {
	_TranslationsHomeStringsHomeScreenEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Flutter E-Learning';
	@override String get setting => 'Settings';
	@override String get welcome => 'Welcome back!';
	@override String get continueLearning => 'Let\'s continue learning today';
	@override String get progress => 'Progress';
	@override String get menu => 'Menu';
	@override String get sectionList => 'Section List';
	@override String get sectionListDescription => 'Check learning contents';
	@override String get historyList => 'Learning History';
	@override String get historyListDescription => 'Check your past learning records';
	@override String get progressError => 'Failed to get progress';
}

// Path: questionStrings.questionScreen
class _TranslationsQuestionStringsQuestionScreenEn implements TranslationsQuestionStringsQuestionScreenJa {
	_TranslationsQuestionStringsQuestionScreenEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Question';
	@override String get yourAnswer => 'Your Answer';
	@override String get correct => 'Correct';
	@override String get incorrect => 'Incorrect';
	@override String get explanation => 'Explanation';
	@override String get advice => 'Advice';
	@override String get sampleCode => 'Sample Code';
	@override String get choiceAnswer => 'Please select an option';
	@override String get judgement => 'Result: {result}';
	@override String get error => 'Error: {error}';
}

// Path: sectionListStrings.sectionListScreen
class _TranslationsSectionListStringsSectionListScreenEn implements TranslationsSectionListStringsSectionListScreenJa {
	_TranslationsSectionListStringsSectionListScreenEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Section List';
	@override String get error => 'Error: {error}';
}

// Path: sectionStrings.sectionScreen
class _TranslationsSectionStringsSectionScreenEn implements TranslationsSectionStringsSectionScreenJa {
	_TranslationsSectionStringsSectionScreenEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Section';
	@override String get error => 'Error: {error}';
}

// Path: settingStrings.settingScreen
class _TranslationsSettingStringsSettingScreenEn implements TranslationsSettingStringsSettingScreenJa {
	_TranslationsSettingStringsSettingScreenEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Settings';
	@override String get apiSetting => 'API Setting';
	@override String get apiKey => 'API Key';
	@override String get apiKeyHint => 'Enter your dify API key';
	@override String get apiKeyApplied => 'API key applied: {apiKey}';
	@override String get error => 'Error: {error}';
	@override String get applyApiKey => 'Apply API Key';
	@override String get other => 'Other';
	@override String get loadQuestionFile => 'Load Question File';
	@override String get loadQuestionFileSubtitle => 'Android/iOS only';
	@override String get loadQuestionFileSnack => 'Loaded question file: {file}';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'historyListStrings.historyListScreen.title': return 'History List';
			case 'historyListStrings.historyListScreen.error': return 'Error: {error}';
			case 'historyListStrings.historyListScreen.answeredAt': return 'Answered at: {answeredAt}';
			case 'historyListStrings.historyListScreen.isCorrect': return 'Correct: {isCorrect}';
			case 'historyStrings.historyScreen.title': return 'History';
			case 'historyStrings.historyScreen.question': return 'Question:';
			case 'historyStrings.historyScreen.yourAnswer': return 'Your Answer';
			case 'historyStrings.historyScreen.choiceAnswer': return 'Selected Answer';
			case 'historyStrings.historyScreen.judgement': return 'Result: {result}';
			case 'historyStrings.historyScreen.explanation': return '[Explanation]';
			case 'historyStrings.historyScreen.advice': return '[Advice]';
			case 'historyStrings.historyScreen.sampleCode': return '[Sample Code]';
			case 'homeStrings.homeScreen.title': return 'Flutter E-Learning';
			case 'homeStrings.homeScreen.setting': return 'Settings';
			case 'homeStrings.homeScreen.welcome': return 'Welcome back!';
			case 'homeStrings.homeScreen.continueLearning': return 'Let\'s continue learning today';
			case 'homeStrings.homeScreen.progress': return 'Progress';
			case 'homeStrings.homeScreen.menu': return 'Menu';
			case 'homeStrings.homeScreen.sectionList': return 'Section List';
			case 'homeStrings.homeScreen.sectionListDescription': return 'Check learning contents';
			case 'homeStrings.homeScreen.historyList': return 'Learning History';
			case 'homeStrings.homeScreen.historyListDescription': return 'Check your past learning records';
			case 'homeStrings.homeScreen.progressError': return 'Failed to get progress';
			case 'questionStrings.questionScreen.title': return 'Question';
			case 'questionStrings.questionScreen.yourAnswer': return 'Your Answer';
			case 'questionStrings.questionScreen.correct': return 'Correct';
			case 'questionStrings.questionScreen.incorrect': return 'Incorrect';
			case 'questionStrings.questionScreen.explanation': return 'Explanation';
			case 'questionStrings.questionScreen.advice': return 'Advice';
			case 'questionStrings.questionScreen.sampleCode': return 'Sample Code';
			case 'questionStrings.questionScreen.choiceAnswer': return 'Please select an option';
			case 'questionStrings.questionScreen.judgement': return 'Result: {result}';
			case 'questionStrings.questionScreen.error': return 'Error: {error}';
			case 'sectionListStrings.sectionListScreen.title': return 'Section List';
			case 'sectionListStrings.sectionListScreen.error': return 'Error: {error}';
			case 'sectionStrings.sectionScreen.title': return 'Section';
			case 'sectionStrings.sectionScreen.error': return 'Error: {error}';
			case 'settingStrings.settingScreen.title': return 'Settings';
			case 'settingStrings.settingScreen.apiSetting': return 'API Setting';
			case 'settingStrings.settingScreen.apiKey': return 'API Key';
			case 'settingStrings.settingScreen.apiKeyHint': return 'Enter your dify API key';
			case 'settingStrings.settingScreen.apiKeyApplied': return 'API key applied: {apiKey}';
			case 'settingStrings.settingScreen.error': return 'Error: {error}';
			case 'settingStrings.settingScreen.applyApiKey': return 'Apply API Key';
			case 'settingStrings.settingScreen.other': return 'Other';
			case 'settingStrings.settingScreen.loadQuestionFile': return 'Load Question File';
			case 'settingStrings.settingScreen.loadQuestionFileSubtitle': return 'Android/iOS only';
			case 'settingStrings.settingScreen.loadQuestionFileSnack': return 'Loaded question file: {file}';
			default: return null;
		}
	}
}

