import 'package:flutter/material.dart';
import 'package:todolist/commons/colors.dart';
import 'package:todolist/pages/first/data/data.dart';

class TextAreaBox extends StatelessWidget {
  final int readIndex;
  const TextAreaBox({super.key, required this.readIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          readTitles[readIndex],
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
          readContents[readIndex],
          textAlign: TextAlign.center,
          style: TextStyle(
              color: white87, fontSize: 16, fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
