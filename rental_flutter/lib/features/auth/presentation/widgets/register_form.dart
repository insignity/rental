import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';

import '../../../../routing/app_router.dart';
import '/utils/utils.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Login"),
                WBox(200, child: TextField()),
              ],
            ),
            HBox(24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Password"),
                WBox(200, child: TextField()),
              ],
            ),
            ElevatedButton(
              onPressed: (){

              },
              child: Text("register"),
            ),
            RichText(
              text: TextSpan(
                text: "Already registered? ",
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: "Login",
                    style: const TextStyle().copyWith(color: Colors.blue),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        context.router.replace(const LoginRoute());
                      },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
