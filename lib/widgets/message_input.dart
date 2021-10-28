// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_message_app/assets/themes/text_styles.dart';

// -------------------------------------------------------------------------
// Quando for chamar esse componente num StatefulWidget,
// tem que envolver ele com um Form e passar o argumento key:controller.key
// que vem do message_controller.dart
// -------------------------------------------------------------------------

class MessageInput extends StatelessWidget {
  final void Function(String value) onChanged;
  final TextEditingController? controller;

  const MessageInput({Key? key, required this.onChanged, this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          width: size.width * 0.73,
          height: size.width * 0.06,
          child: TextFormField(
              onChanged:
                  onChanged, // Quando for instanciado, chama controller.OnChange
              style: TextStyles.messageInput,
              decoration: InputDecoration(
                labelText: "Escreva sua mensagem aqui...",
                labelStyle: TextStyles.messageInput,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 17, horizontal: 25),
              )),
        )
      ],
    );
  }
}
