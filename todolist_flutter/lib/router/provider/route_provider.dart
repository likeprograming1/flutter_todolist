import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:todolist/commons/route.dart';
import 'package:todolist/pages/loading/provider/laod_provider.dart';
import 'package:todolist/router/firstLoad.dart';
import 'package:todolist/router/routes/homeRoute.dart';

final Provider<GoRouter> routerProvider = Provider((ref) {
  final LoadNotifier loadState = LoadNotifier(ref);

  return GoRouter(
      debugLogDiagnostics: true,
      initialLocation: Routes.load,
      refreshListenable: loadState,
      redirect: (context, state) {
        final isLoading = ref.read(LoadProvider);

        debugPrint("state.path: ${state.fullPath}");

        if (isLoading.isLoad && state.fullPath == "/load") {
          return Routes.home;
        }

        return null;
      },
      routes: <RouteBase>[mainRoute, indexPage]);
});
