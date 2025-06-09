import 'package:flutter_e_learning/common/route_paths.dart';
import 'package:flutter_e_learning/presantation/history/view/history_screen.dart';
import 'package:flutter_e_learning/presantation/history_list/view/history_list_screen.dart';
import 'package:flutter_e_learning/presantation/home/view/home_screen.dart';
import 'package:flutter_e_learning/presantation/question/view/question_screen.dart';
import 'package:flutter_e_learning/presantation/section/view/section_screen.dart';
import 'package:flutter_e_learning/presantation/section_list/view/section_list_screen.dart';
import 'package:flutter_e_learning/presantation/setting/view/setting_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: AppRoutes.homePath,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: AppRoutes.settingPath,
      builder: (context, state) => const SettingScreen(),
    ),
    GoRoute(
      path: AppRoutes.historyListPath,
      builder: (context, state) => const HistoryListScreen(),
      routes: [
        GoRoute(
          path: AppRoutes.history,
          builder: (context, state) => const HistoryScreen(),
        ),
      ],
    ),
    GoRoute(
      path: AppRoutes.sectionListPath,
      builder: (context, state) => const SectionListScreen(),
      routes: [
        GoRoute(
          path: AppRoutes.section,
          builder: (context, state) => const SectionScreen(),
          routes: [
            GoRoute(
              path: AppRoutes.question,
              builder: (context, state) => const QuestionScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);
