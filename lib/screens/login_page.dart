// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_message_app/assets/themes/app_colors.dart';
import 'package:flutter_message_app/controllers/auth/login_controller.dart';
import 'package:flutter_message_app/widgets/login_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Container(
          width: size.width * 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Choose a login option',
                style: TextStyle(color: AppColors.white),
              ),
              LogInButton(
                onTap: () {
                  LoginController().googleSignIn(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
