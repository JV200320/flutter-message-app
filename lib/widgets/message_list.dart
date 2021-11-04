import 'package:flutter/material.dart';
import 'package:flutter_message_app/mock_data/mock_data.dart';
import 'package:flutter_message_app/models/user_model.dart';
import 'package:flutter_message_app/widgets/current_user_message.dart';
import 'package:flutter_message_app/widgets/other_user_message.dart';

class MessageList extends StatefulWidget {
  final UserModel currentUser;
  const MessageList({
    Key? key,
    required this.currentUser,
  }) : super(key: key);

  @override
  _MessageListState createState() => _MessageListState();
}

class _MessageListState extends State<MessageList> {
  @override
  Widget build(BuildContext context) {
    var messages = MockData.getMockMessages(widget.currentUser);
    return ListView.builder(
      itemBuilder: (context, i) {
        if (widget.currentUser == messages[i].user) {
          return CurrentUserMessage(
            message: messages[i],
          );
        }
        return OtherUserMessage(
          message: messages[i],
        );
      },
      itemCount: messages.length,
    );
  }
}
