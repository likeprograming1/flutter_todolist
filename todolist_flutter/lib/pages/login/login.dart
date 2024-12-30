import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todolist/commons/colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backGround,
        leading: IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: whiteColor,
            )),
      ),
      body: SizedBox(
        child: Center(
          child: Text("LoginPage"),
        ),
      ),
    );
  }
}
