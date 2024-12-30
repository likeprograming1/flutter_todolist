import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todolist/pages/first/widgets/appbar.dart';
import 'package:todolist/pages/first/widgets/body.dart';
import 'package:todolist/pages/first/widgets/bottombar.dart';

class FirstPage extends ConsumerWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: CustomBody(),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}
