import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todolist/commons/colors.dart';
import 'package:todolist/commons/route.dart';

class LoginBottombar extends StatelessWidget {
  const LoginBottombar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 50,
      color: backGround,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Don’t have an account?",
              style: TextStyle(
                  color: grayLineColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w300),
            ),
            TextButton(
              onPressed: () {
                context.push(Routes.register);
              },
              style: TextButton.styleFrom(
                padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                minimumSize: Size(0, 0),
              ),
              child: Text("Register",
                  style: TextStyle(
                      color: whiteColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w300)),
            )
          ]),
    );
  }
}
