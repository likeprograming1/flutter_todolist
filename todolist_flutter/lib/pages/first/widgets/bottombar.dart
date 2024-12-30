import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:todolist/components/colors.dart';
import 'package:todolist/components/route.dart';
import 'package:todolist/pages/first/provider/page_provider.dart';

class CustomBottomBar extends ConsumerWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int readIndex = ref.watch(pageReadProvvider).pageIndex;
    return BottomAppBar(
      color: backGround,
      child: SizedBox(
        height: 50.0,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          TextButton(
            onPressed: () {
              ref.read(pageReadProvvider.notifier).pageDown();
            },
            child: Text(
              'BACK',
              style: TextStyle(
                  color: white44, fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (readIndex == 2) {
                context.push(Routes.welcome);
                return;
              }
              ref.read(pageReadProvvider.notifier).pageUp();
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
              ),
              backgroundColor: buttonColor,
            ),
            child: Text(
              readIndex != 2 ? "Next" : "Get Started",
              style: TextStyle(color: whiteColor),
            ),
          )
        ]),
      ),
    );
  }
}
