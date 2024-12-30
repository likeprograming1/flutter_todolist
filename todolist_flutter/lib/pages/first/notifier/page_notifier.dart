// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todolist/pages/first/state/page_read_state.dart';

class pageReadNotifier extends StateNotifier<ReadState> {
  pageReadNotifier() : super(ReadState());

  Future<void> pageUp() async {
    try {
      if (state.pageIndex < 2) {
        debugPrint("pageUp index updating!!");
        state = state.copywith(pageIndex: state.pageIndex + 1);
      }
      debugPrint("pageUp index successfully update!!");
    } catch (e) {
      debugPrint("pageUp index update failed!! : $e");
    }
  }

  Future<void> pageDown() async {
    try {
      if (state.pageIndex > 0 && state.pageIndex < 3) {
        debugPrint("pageDown index updating!!");
        state = state.copywith(pageIndex: state.pageIndex - 1);
      }
      debugPrint("pageDown index successfully update!!");
    } catch (e) {
      debugPrint("pageDown index update failed!! : $e");
    }
  }

  Future<void> welcomeOn() async {
    try {
      debugPrint("welcomeOn updating!!");
      state = state.copywith(welcomepageOn: true);
      debugPrint("welcomeOn successfully update!!");
    } catch (e) {
      debugPrint("welcome page Loading failed...");
    }
  }
}
