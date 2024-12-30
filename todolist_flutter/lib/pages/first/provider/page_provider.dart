import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todolist/pages/first/notifier/page_notifier.dart';
import 'package:todolist/pages/first/state/page_read_state.dart';

final pageReadProvvider =
    StateNotifierProvider<pageReadNotifier, ReadState>((ref) {
  return pageReadNotifier();
});
