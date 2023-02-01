import 'package:flutter/material.dart';

import '../widgets/login_form.dart';
import '../widgets/register_form.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('register'),),
      body: Center(
        child: RegisterForm(),
      ),
    );
  }
}
