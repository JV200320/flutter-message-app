// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_message_app/assets/themes/app_colors.dart';
import 'package:flutter_message_app/assets/themes/text_styles.dart';
import 'package:flutter_message_app/models/user_model.dart';

PreferredSizeWidget CustomAppBar(UserModel user) {
  return PreferredSize(
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        color: AppColors.purple,
      ),
      height: 90,
      child: Center(
        child: ListTile(
          title: Text.rich(
            TextSpan(
              text: "E aí, ",
              style: TextStyles.greeting,
              children: [
                TextSpan(
                  text: user.name,
                  style: TextStyles.greetingUsername,
                )
              ],
            ),
          ),
          trailing: CircleAvatar(
            backgroundColor: AppColors.white,
            radius: 22,
            backgroundImage: NetworkImage("${user.photoUrl}"),
          ),
        ),
      ),
    ),
    preferredSize: Size.fromHeight(90),
  );
}
