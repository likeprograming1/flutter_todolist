import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todolist/pages/loading/provider/laod_provider.dart';

class Loading extends ConsumerStatefulWidget {
  const Loading({super.key});

  @override
  ConsumerState<Loading> createState() => _LoadingState();
}

class _LoadingState extends ConsumerState<Loading> {
  @override
  void initState() {
    super.initState();
    ref.read(LoadProvider.notifier).isLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(Icons.check_box), Text("Loading...")],
        ),
      ),
    );
  }
}
