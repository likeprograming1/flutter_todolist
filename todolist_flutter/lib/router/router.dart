import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todolist/commons/colors.dart';
import 'package:todolist/router/provider/route_provider.dart';

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
