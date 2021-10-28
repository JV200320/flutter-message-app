// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_message_app/assets/themes/app_colors.dart';
import 'package:flutter_message_app/mock_data/mock_data.dart';
import 'package:flutter_message_app/models/user_model.dart';
import 'package:flutter_message_app/widgets/app_bar.dart';
import 'package:flutter_message_app/widgets/current_user_message.dart';
import 'package:flutter_message_app/widgets/other_user_message.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UserModel user =
        ModalRoute.of(context)!.settings.arguments as UserModel;
    final appBar = CustomAppBar(user);
    var messages = MockData.getMockMessages(user);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: appBar,
        body: Container(
          height: MediaQuery.of(context).size.height * 0.92 -
              appBar.preferredSize.height -
              MediaQuery.of(context).padding.top,
          child: ListView.builder(
            itemBuilder: (context, i) {
              if (user == messages[i].user) {
                return CurrentUserMessage(
                  message: messages[i],
                );
              }
              return OtherUserMessage(
                message: messages[i],
              );
            },
            itemCount: messages.length,
          ),
        ),
      ),
    );
  }
}
