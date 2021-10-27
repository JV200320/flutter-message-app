// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_message_app/controllers/auth/login_controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                LoginController().googleSignIn(context);
              },
              child: Text('Login'),
            ),
          )
        ],
      ),
    );
  }
}
