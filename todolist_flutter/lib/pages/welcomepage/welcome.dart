import 'package:flutter/material.dart';
import 'package:todolist/components/colors.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(
            "Welcome to UpTodo",
            style: TextStyle(
              color: whiteColor,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 42,
          ),
          Text(
            "Please login to your account or create \nnew account to continue",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: white87, fontSize: 16, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
