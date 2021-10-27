// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_message_app/assets/themes/app_colors.dart';
import 'package:flutter_message_app/models/user_model.dart';
import 'package:flutter_message_app/widgets/app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: CustomAppBar(
            ModalRoute.of(context)!.settings.arguments as UserModel),
      ),
    );
  }
}
