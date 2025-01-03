import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todolist/commons/colors.dart';
import 'package:todolist/commons/route.dart';
import 'package:todolist/commons/textbox.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({
    super.key,
  });

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    String username = "";
    String password = "";

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.fromLTRB(24, 41, 24, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Login",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 33,
            ),
            TextBoxComponents(
              textboxtitle: "Username",
              textExample: "Enter your Username",
              onPressed: (value) async {
                try {
                  username = value;
                } catch (e) {
                  debugPrint(e.toString());
                }
              },
            ),
            SizedBox(
              height: 25,
            ),
            TextBoxComponents(
              textboxtitle: "Password",
              textExample: "Enter your Password",
              onPressed: (value) async {
                try {
                  password = value;
                } catch (e) {
                  debugPrint(e.toString());
                }
              },
            ),
            SizedBox(
              height: 69,
            ),
            ElevatedButton(
              onPressed: () {
                debugPrint("username : $username");
                debugPrint("password : $password");

                context.push(Routes.indexpage);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: buttonColor,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                minimumSize: Size(double.infinity, 48),
              ),
              child: Text("Login"),
            ),
            SizedBox(
              height: 31,
            ),
            Center(
              child: Row(
                children: [
                  SizedBox(
                    width: (MediaQuery.of(context).size.width - 48) * 0.46,
                    height: 1,
                    child: Divider(
                      color: grayLineColor,
                      thickness: 1,
                    ),
                  ),
                  Text(
                    " or ",
                    style: TextStyle(color: grayLineColor, fontSize: 16),
                  ),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width - 48) * 0.46,
                    height: 1,
                    child: Divider(
                      color: grayLineColor,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 29,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                    side: BorderSide(
                        color: buttonColor), // Change border color here
                  ),
                  minimumSize: Size(double.infinity, 48),
                ),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image(
                    image: AssetImage("assets/login/google.png"),
                    width: 24,
                    height: 24,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Login with Google",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: whiteColor))
                ])),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                    side: BorderSide(
                        color: buttonColor), // Change border color here
                  ),
                  minimumSize: Size(double.infinity, 48),
                ),
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage("assets/login/apple.png"),
                        width: 24,
                        height: 24,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Login with Appe",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: whiteColor))
                    ])),
          ],
        ),
      ),
    );
  }
}
