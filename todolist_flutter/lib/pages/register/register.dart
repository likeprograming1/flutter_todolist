import 'package:flutter/material.dart';
import 'package:todolist/pages/register/widgets/regiser_appbar.dart';
import 'package:todolist/pages/register/widgets/regiser_body.dart';
import 'package:todolist/pages/register/widgets/regiser_bottombar.dart';

class RegisterWidget extends StatelessWidget {
  const RegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RegiserAppbar(),
      body: RegiserBody(),
      bottomNavigationBar: RegiserBottombar(),
    );
  }
}
