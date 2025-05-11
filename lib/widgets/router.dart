import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../home.dart';
import '../calendar_page.dart';

final router = GoRouter(
  initialLocation: HomePage.path,
  routes: [
    GoRoute(
      path: HomePage.path,
      pageBuilder:
          (BuildContext context, GoRouterState state) =>
              MaterialPage(child: HomePage()),
    ),
    GoRoute(
      path: CalendarApp.path,
      pageBuilder:
          (BuildContext context, GoRouterState state) =>
              MaterialPage(child: CalendarPage()),
    ),
  ],
);
