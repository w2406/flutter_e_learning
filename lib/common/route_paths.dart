/// GoRouterのパスを定数化したファイル
class AppRoutes {
  // GoRouterの設定で使う絶対パス
  static const String homePath = '/';
  static const String historyListPath = '/history_list';
  static const String settingPath = '/setting';
  static const String historyPath = '/history_list/history';
  static const String sectionListPath = '/section_list';
  static const String sectionPath = '/section_list/section';
  static const String questionPath = '/section_list/section/question';

  // GoRouteのpath引数で使う相対パス
  static const String history = 'history';
  static const String section = 'section';
  static const String question = 'question';
}
