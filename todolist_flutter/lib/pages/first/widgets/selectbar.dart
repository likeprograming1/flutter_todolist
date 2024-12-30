import 'package:flutter/material.dart';
import 'package:todolist/commons/colors.dart';

class SelectBar extends StatelessWidget {
  final int readIndex;
  const SelectBar({super.key, required this.readIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 4,
          width: 26,
          decoration: BoxDecoration(
            color: readIndex == 0 ? whiteColor : grayColor,
            borderRadius: BorderRadius.circular(56),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Container(
          height: 4,
          width: 26,
          decoration: BoxDecoration(
            color: readIndex == 1 ? whiteColor : grayColor,
            borderRadius: BorderRadius.circular(56),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Container(
          height: 4,
          width: 26,
          decoration: BoxDecoration(
            color: readIndex == 2 ? whiteColor : grayColor,
            borderRadius: BorderRadius.circular(56),
          ),
        )
      ],
    );
  }
}
