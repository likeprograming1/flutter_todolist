import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todolist/pages/loading/notifier/load_notifier.dart';
import 'package:todolist/pages/loading/state/loading_state.dart';

final LoadProvider =
    StateNotifierProvider<LoadingNotifier, LoadingState>((ref) {
  return LoadingNotifier();
});

final LoadStateProvider = StateProvider<LoadingState>((ref) {
  return LoadingState();
});
