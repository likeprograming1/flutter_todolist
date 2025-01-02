import 'package:flutter/material.dart';
import 'package:todolist/pages/login/widgets/login_appbar.dart';
import 'package:todolist/pages/login/widgets/login_body.dart';
import 'package:todolist/pages/login/widgets/login_bottombar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LoginAppbar(),
      body: LoginBody(),
      bottomNavigationBar: LoginBottombar(),
    );
  }
}
