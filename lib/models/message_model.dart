// ignore_for_file: prefer_if_null_operators

import 'dart:convert';

class MessageModel {
  final String? text;
  MessageModel({
    this.text,
  });

  MessageModel copyWith({
    String? text,
  }) {
    return MessageModel(
      text: text ?? this.text,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'text': text,
    };
  }

  factory MessageModel.fromMap(Map<String, dynamic> map) {
    return MessageModel(
      text: map['text'] != null ? map['text'] : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MessageModel.fromJson(String source) =>
      MessageModel.fromMap(json.decode(source));

  @override
  String toString() => 'MessageModel(text: $text)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MessageModel && other.text == text;
  }

  @override
  int get hashCode => text.hashCode;
}
