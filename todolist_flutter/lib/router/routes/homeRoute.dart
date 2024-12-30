import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todolist/commons/route.dart';
import 'package:todolist/pages/first/first.dart';
import 'package:todolist/pages/loading/loading.dart';
import 'package:todolist/pages/login/login.dart';
import 'package:todolist/pages/welcomepage/welcome.dart';

final mainRoute = GoRoute(
    name: RouteNames.home,
    path: Routes.home,
    builder: (BuildContext context, GoRouterState state) {
      return FirstPage();
    },
    routes: <RouteBase>[
      GoRoute(
        name: RouteNames.load,
        path: Routes.load,
        builder: (context, state) {
          return Loading();
        },
      ),
      GoRoute(
        name: RouteNames.welcome,
        path: Routes.welcome,
        builder: (context, state) {
          return WelcomePage();
        },
      ),
      GoRoute(
        name: RouteNames.login,
        path: Routes.login,
        builder: (context, state) {
          return LoginPage();
        },
      ),
    ]);
