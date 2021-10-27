import 'package:flutter/material.dart';
import 'package:flutter_message_app/assets/themes/app_colors.dart';
import 'package:flutter_message_app/assets/themes/text_styles.dart';
import 'package:flutter_message_app/services/auth/google_auth.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = AuthController();
    controller.currentUser(context);
    return Expanded(
      child: Container(
        color: AppColors.background,
        child: Center(
          child: Text(
            'Seja bem-vindo.',
            style: TextStyles.titleLogin,
          ),
        ),
      ),
    );
  }
}
