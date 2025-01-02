import 'package:flutter/material.dart';

class TextBoxComponents extends StatelessWidget {
  final String textboxtitle;
  final String textExample;
  final Future<void> Function(String) onPressed;
  const TextBoxComponents(
      {super.key,
      required this.textboxtitle,
      required this.textExample,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(textboxtitle,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
      SizedBox(
        height: 8,
      ),
      TextField(
        controller: TextEditingController(),
        obscureText:
            textboxtitle == "Password" || textboxtitle == "Confirm Password"
                ? true
                : false,
        decoration: InputDecoration(
          labelText: textExample,
          hintText: textExample,
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          floatingLabelBehavior:
              FloatingLabelBehavior.never, // 텍스트가 위로 올라가지 않도록 설정
        ),
        cursorColor: Colors.white, // 커서 색상을 흰색으로 설정
        onChanged: (value) {
          onPressed(value);
        },
        onSubmitted: (value) {
          onPressed(value);
        },
      ),
    ]);
  }
}
