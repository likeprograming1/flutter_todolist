import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todolist/pages/loading/state/loading_state.dart';

class LoadingNotifier extends StateNotifier<LoadingState> {
  LoadingNotifier() : super(LoadingState());

  Future<void> isLoading() async {
    try {
      debugPrint("LoadState Uplaoding!!!");
      // 딜레이 2초
      await Future.delayed(Duration(seconds: 2), () {
        // 2초뒤 true로 변경
        state = state.copyWith(isLoad: true);
      });
      debugPrint("LoadState SuccessFully!!!");
      debugPrint("LoadState isLoad : ${state.isLoad}");
    } catch (e) {
      debugPrint("Error Loading: $e");
    }
    return;
  }
}
