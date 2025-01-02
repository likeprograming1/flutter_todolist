import 'package:flutter/material.dart';
import 'package:todolist/commons/colors.dart';

class IndexBody extends StatelessWidget {
  const IndexBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 75,
          ),
          Image(image: AssetImage("assets/home/Checklist.png")),
          SizedBox(
            height: 10,
          ),
          Text(
            "What do you want to do today?",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w300, color: white87),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Tap + to add your tasks",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w300, color: white87),
          ),
        ],
      ),
    );
  }
}
