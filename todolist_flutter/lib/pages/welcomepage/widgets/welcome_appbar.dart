import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todolist/commons/colors.dart';

class WelcomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const WelcomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      foregroundColor: whiteColor,
      backgroundColor: backGround,
      leading: IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios)),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
