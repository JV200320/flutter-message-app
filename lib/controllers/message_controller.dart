import 'package:flutter/material.dart';
import 'package:flutter_message_app/models/message_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MessageController {
  final formKey = GlobalKey<
      FormState>(); // Não sei nem pra quê danado serve mas to colocando
  MessageModel message = MessageModel();

  String? validateMessage(String? value) {
    value?.isEmpty ?? true ? "Your message can't be an empty text" : null;
  }

  void onChange({String? text}) {
    message = message.copyWith(text: text);
  }

  Future<void> saveMessage() async {
    final instance = await SharedPreferences.getInstance();
    final messages = instance.getStringList("messages") ?? <String>[];
    messages.add(message.toJson());
    await instance.setStringList("messages", messages);
    return;
  }

  Future<void> sendMessage() async {
    final form = formKey.currentState;
    if (form!.validate()) {
      return await saveMessage();
    }
  }
}
