import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todolist/pages/loading/provider/laod_provider.dart';

class LoadNotifier extends ChangeNotifier {
  final Ref _ref;
  LoadNotifier(this._ref) {
    _ref.listen(LoadProvider, (previous, next) {
      debugPrint("State Changed : $next");
      notifyListeners();
    });
  }
}
