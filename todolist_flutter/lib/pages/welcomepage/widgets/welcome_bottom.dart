import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todolist/commons/colors.dart';
import 'package:todolist/commons/route.dart';

class WelcomeBottom extends StatelessWidget {
  const WelcomeBottom({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return BottomAppBar(
      color: backGround,
      height: 150,
      child: Column(
        children: [
          SizedBox(
            width: screenWidth * 0.9,
            height: 48,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0)),
                backgroundColor: buttonColor,
              ),
              onPressed: () {
                context.push(Routes.login);
              },
              child: Text(
                "LOGIN",
                style: TextStyle(
                    color: whiteColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          SizedBox(
            height: 28,
          ),
          SizedBox(
            width: screenWidth * 0.9,
            height: 48,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                    side: BorderSide(color: buttonColor, width: 2.0)),
                backgroundColor: backGround,
              ),
              onPressed: () {
                context.push(Routes.register);
              },
              child: Text(
                "Create account",
                style: TextStyle(
                    color: whiteColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
