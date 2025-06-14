import 'package:flutter/widgets.dart';
import 'package:flutter_e_learning/common/constants/route_paths.dart';
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
      name: AppRoutes.home,
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      name: AppRoutes.setting,
      path: '/${AppRoutes.setting}',
      builder: (context, state) => const SettingScreen(),
    ),
    GoRoute(
      name: AppRoutes.historyList,
      path: '/${AppRoutes.historyList}',
      builder: (context, state) => const HistoryListScreen(),
      routes: [
        GoRoute(
          name: AppRoutes.history,
          path: '${AppRoutes.history}/:${AppRoutes.historyId}',
          builder: (context, state) {
            final id = state.pathParameters[AppRoutes.historyId];
            if (id == null) {
              return Center(child: Text('History ID  not found'));
            }

            return HistoryScreen(id: id);
          },
        ),
      ],
    ),
    GoRoute(
      name: AppRoutes.sectionList,
      path: '/${AppRoutes.sectionList}',
      builder: (context, state) => const SectionListScreen(),
      routes: [
        GoRoute(
          name: AppRoutes.section,
          path: '${AppRoutes.section}/:${AppRoutes.sectionId}',
          builder: (context, state) {
            final sectionId = state.pathParameters[AppRoutes.sectionId];
            if (sectionId == null) {
              return Center(child: Text('Section ID not found'));
            }
            return SectionScreen(id: sectionId);
          },
          routes: [
            GoRoute(
              name: AppRoutes.question,
              path: '${AppRoutes.question}/:${AppRoutes.questionId}',
              builder: (context, state) {
                final id = state.pathParameters[AppRoutes.questionId];
                if (id == null) {
                  return Center(child: Text('Question ID not found'));
                }
                return QuestionScreen(id);
              },
            ),
          ],
        ),
      ],
    ),
  ],
);
