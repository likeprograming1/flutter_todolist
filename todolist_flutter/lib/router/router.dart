import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:todolist/components/colors.dart';
import 'package:todolist/components/route.dart';
import 'package:todolist/pages/first/first.dart';
import 'package:todolist/pages/loading/loading.dart';
import 'package:todolist/pages/loading/provider/laod_provider.dart';
import 'package:todolist/pages/welcomepage/welcome.dart';
import 'package:todolist/router/firstLoad.dart';

final Provider<GoRouter> routerProvider = Provider((ref) {
  final LoadNotifier loadState = LoadNotifier(ref);

  return GoRouter(
      debugLogDiagnostics: true,
      initialLocation: Routes.load,
      refreshListenable: loadState,
      redirect: (context, state) {
        final isLoading = ref.read(LoadProvider);

        debugPrint("isLoad : ${isLoading.isLoad}");
        debugPrint(
            "state.path: ${state.fullPath}"); // state.location을 사용하여 경로 출력

        if (isLoading.isLoad && state.fullPath == "/load") {
          return Routes.home;
        }

        return null;
      },
      routes: <RouteBase>[
        GoRoute(
          name: "home",
          path: Routes.home,
          builder: (BuildContext context, GoRouterState state) {
            return FirstPage();
          },
        ),
        GoRoute(
          name: "load",
          path: Routes.load,
          builder: (context, state) {
            return Loading();
          },
        ),
        GoRoute(
          name: "welcome",
          path: Routes.welcome,
          builder: (context, state) {
            return WelcomePage();
          },
        ),
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
      theme: ThemeData(
        scaffoldBackgroundColor: backGround,
        textTheme: textColor,
      ),
    );
  }
}
