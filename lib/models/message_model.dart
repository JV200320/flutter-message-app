import 'dart:convert';
import 'package:flutter_message_app/models/user_model.dart';

class MessageModel {
  UserModel user;
  String text;
  MessageModel({
    required this.user,
    required this.text,
  });

  MessageModel copyWith({
    UserModel? user,
    String? text,
  }) {
    return MessageModel(
      user: user ?? this.user,
      text: text ?? this.text,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'user': user.toMap(),
      'text': text,
    };
  }

  factory MessageModel.fromMap(Map<String, dynamic> map) {
    return MessageModel(
      user: UserModel.fromMap(map['user']),
      text: map['text'],
    );
  }

  String toJson() => json.encode(toMap());

  factory MessageModel.fromJson(String source) =>
      MessageModel.fromMap(json.decode(source));

  @override
  String toString() => 'MessageModel(user: $user, text: $text)';


  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is MessageModel && other.user == user && other.text == text;
  }

  @override
  int get hashCode => user.hashCode ^ text.hashCode;

}
