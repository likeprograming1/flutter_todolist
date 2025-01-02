import 'package:flutter/material.dart';
import 'package:todolist/commons/colors.dart';

class IndexAppbar extends StatelessWidget implements PreferredSizeWidget {
  const IndexAppbar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: whiteColor),
      backgroundColor: backGround,
      leading: Padding(
        padding: const EdgeInsets.only(left: 24.0),
        child: Icon(Icons.filter_list_outlined),
      ),
      centerTitle: true,
      title: Text(
        "Index",
        style: TextStyle(color: whiteColor, fontSize: 20),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 24.0),
          child: CircleAvatar(
            backgroundColor: whiteColor,
            child: Icon(Icons.person),
          ),
        )
      ],
    );
  }
}
