# todoup을 만들면서 고민했던 내용 - 1일차

## 1. **GoRouter를 이용한 Redirect 구현**

스플래시 화면에서 메인 화면으로 자연스럽게 전환하기 위해 `GoRouter`의 `redirect`를 사용했습니다. 이를 위해 다음과 같은 과정을 거쳤습니다.

- Riverpod을 이용해 `Notifier`와 `Provider`를 생성.
- `GoRouter`의 `refreshListenable` 속성에 `ChangeNotifier`를 연결해 상태 변화 감지.
- 상태값이 변경되었을 때 `redirect`가 이를 확인하고 화면 전환을 처리.

### 주요 코드

#### router.dart

```dart
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
```

#### routerProvider.dart

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:todolist/commons/route.dart';
import 'package:todolist/pages/loading/provider/laod_provider.dart';
import 'package:todolist/router/firstLoad.dart';
import 'package:todolist/router/routes/homeRoute.dart';

final Provider<GoRouter> routerProvider = Provider((ref) {
  final LoadNotifier loadState = LoadNotifier(ref);

  return GoRouter(
    debugLogDiagnostics: true,
    initialLocation: Routes.load,
    refreshListenable: loadState,
    redirect: (context, state) {
      final isLoading = ref.read(LoadProvider);

      debugPrint("state.path: ${state.fullPath}");

      if (isLoading.isLoad && state.fullPath == "/load") {
        return Routes.home;
      }

      return null;
    },
    routes: <RouteBase>[mainRoute],
  );
});
```

#### LoadNotifier.dart

```dart
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
```

---

## 2. **State Path와 Full Path 문제**

- `state.path`를 사용할 때 null 값이 반환되는 문제가 발생했습니다.
- 대신 `state.fullPath`를 활용하여 경로 확인 및 리디렉션 처리를 구현했습니다.

### 수정된 코드

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:todolist/commons/route.dart';
import 'package:todolist/pages/loading/provider/laod_provider.dart';
import 'package:todolist/router/firstLoad.dart';
import 'package:todolist/router/routes/homeRoute.dart';

final Provider<GoRouter> routerProvider = Provider((ref) {
  final LoadNotifier loadState = LoadNotifier(ref);

  return GoRouter(
    debugLogDiagnostics: true,
    initialLocation: Routes.load,
    refreshListenable: loadState,
    redirect: (context, state) {
      final isLoading = ref.read(LoadProvider);

      debugPrint("state.path: ${state.fullPath}");

      if (isLoading.isLoad && state.fullPath == "/load") {
        return Routes.home;
      }

      return null;
    },
    routes: <RouteBase>[mainRoute],
  );
});
```
