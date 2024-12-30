import 'package:flutter/material.dart';
import 'package:todolist/pages/welcomepage/widgets/welcome_appbar.dart';
import 'package:todolist/pages/welcomepage/widgets/welcome_body.dart';
import 'package:todolist/pages/welcomepage/widgets/welcome_bottom.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WelcomeAppbar(),
      body: WelcomeBody(),
      bottomNavigationBar: WelcomeBottom(),
    );
  }
}
