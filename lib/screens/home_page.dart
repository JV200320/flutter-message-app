// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_message_app/assets/themes/app_colors.dart';
import 'package:flutter_message_app/models/user_model.dart';
import 'package:flutter_message_app/widgets/app_bar.dart';
import 'package:flutter_message_app/widgets/message_input.dart';
import 'package:flutter_message_app/widgets/message_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UserModel currentUser =
        ModalRoute.of(context)!.settings.arguments as UserModel;
    final appBar = CustomAppBar(currentUser);
    var messageAndTextInputHeight = MediaQuery.of(context).size.height -
        appBar.preferredSize.height -
        MediaQuery.of(context).padding.top;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: appBar,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: messageAndTextInputHeight * 0.9,
                child: MessageList(
                  currentUser: currentUser,
                ),
              ),
              SizedBox(
                height: messageAndTextInputHeight * 0.1,
                child: MessageInput(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
