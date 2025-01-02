import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todolist/commons/colors.dart';
import 'package:todolist/commons/route.dart';

class RegiserBottombar extends StatelessWidget {
  const RegiserBottombar({super.key});

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
              "Already have an account?",
              style: TextStyle(
                  color: grayLineColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w300),
            ),
            TextButton(
              onPressed: () {
                context.push(Routes.login);
              },
              style: TextButton.styleFrom(
                padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                minimumSize: Size(0, 0),
              ),
              child: Text("Login",
                  style: TextStyle(
                      color: whiteColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w300)),
            )
          ]),
    );
  }
}
