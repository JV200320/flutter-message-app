import 'package:flutter/material.dart';
import 'package:flutter_message_app/assets/themes/app_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LogInButton extends StatelessWidget {
  final VoidCallback onTap;
  const LogInButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 58),
      padding: EdgeInsets.only(top: 11, bottom: 11),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: AppColors.lighterBackground,
      ),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Icon(
                FontAwesomeIcons.google,
                color: AppColors.white,
              ),
            ),
            Expanded(
              flex: 3,
              child: Text(
                'Google Account',
                style: TextStyle(color: AppColors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
