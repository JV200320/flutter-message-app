// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_message_app/assets/themes/app_colors.dart';
import 'package:flutter_message_app/assets/themes/text_styles.dart';
import 'package:flutter_message_app/models/user_model.dart';

class AppBar extends StatefulWidget {
  final UserModel user;
  const AppBar({Key? key, required this.user}) : super(key: key);

  @override
  _AppBarState createState() => _AppBarState();
}

class _AppBarState extends State<AppBar> {
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        child: Container(
          height: 90,
          color: AppColors.purple,
          child: ListTile(
            title: Text.rich(
              TextSpan(
                text: "E aí, ",
                style: TextStyles.greeting,
                children: [
                  TextSpan(
                    text: widget.user.name,
                    style: TextStyles.greetingUsername,
                  )
                ],
              ),
            ),
            trailing: CircleAvatar(
              backgroundColor: AppColors.white,
              radius: 22,
              backgroundImage: NetworkImage("${widget.user.photoUrl}"),
            ),
          ),
        ),
        preferredSize: Size.fromHeight(90));
  }
}
