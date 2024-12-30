import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:todolist/components/colors.dart';
import 'package:todolist/components/route.dart';

class CustomAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      backgroundColor: backGround,
      leading: TextButton(
        onPressed: () {
          context.push(Routes.welcome);
        },
        style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size(0, 0),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap // 터치 영역 최소
            ),
        child: Text(
          "SKIP",
          style: TextStyle(
              color: white44, fontSize: 16, fontWeight: FontWeight.w300),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
