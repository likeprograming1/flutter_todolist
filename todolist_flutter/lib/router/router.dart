import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:todolist/components/route.dart';
import 'package:todolist/pages/first/first.dart';
import 'package:todolist/pages/loading/loading.dart';
import 'package:todolist/pages/loading/provider/laod_provider.dart';

final Provider<GoRouter> routerProvider = Provider((ref) {
  return GoRouter(
      debugLogDiagnostics: true,
      initialLocation: Routes.home,
      redirect: (context, state) {
        final loadState = ref.read(LoadStateProvider);
        debugPrint("isLoad : ${loadState.isLoad}");
        if (!loadState.isLoad) {
          return Routes.load;
        }

        debugPrint("isLoad : ${loadState.isLoad}");
        if (loadState.isLoad) {
          return Routes.home;
        }

        return null;
      },
      routes: <RouteBase>[
        GoRoute(
          path: Routes.home,
          builder: (BuildContext context, GoRouterState state) {
            return FirstPage();
          },
        ),
        GoRoute(
          path: Routes.load,
          builder: (context, state) {
            return Loading();
          },
        )
      ]);
});

class Routers extends ConsumerWidget {
  const Routers({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "todolist",
      routerConfig: router,
    );
  }
}
