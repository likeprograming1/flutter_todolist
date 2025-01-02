import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todolist/pages/first/data/data.dart';
import 'package:todolist/pages/first/provider/page_provider.dart';
import 'package:todolist/pages/first/widgets/selectbar.dart';
import 'package:todolist/pages/first/widgets/textarea.dart';

class CustomBody extends ConsumerWidget {
  const CustomBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int readIndex = ref.watch(pageReadProvvider).pageIndex;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(38, 2, 38, 0),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Image(
              image: AssetImage(imagesAddress[readIndex]),
              width: 271,
              height: 278,
            ),
            SizedBox(
              height: 50,
            ),
            SelectBar(
              readIndex: readIndex,
            ),
            SizedBox(
              height: 50,
            ),
            TextAreaBox(
              readIndex: readIndex,
            )
          ]),
        ),
      ),
    );
  }
}
