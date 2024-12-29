import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todolist/router/router.dart';

void main() {
  runApp(ProviderScope(child: Routers()));
}
