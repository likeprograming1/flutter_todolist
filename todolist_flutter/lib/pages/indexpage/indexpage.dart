import 'package:flutter/material.dart';
import 'package:todolist/pages/indexpage/widgets/index_appbar.dart';
import 'package:todolist/pages/indexpage/widgets/index_body.dart';
import 'package:todolist/commons/commonbottom.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: IndexAppbar(),
      body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(children: [
            IndexBody(),
            Commonbottom(),
          ])),
    );
  }
}
