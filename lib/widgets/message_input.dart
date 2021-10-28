// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_message_app/assets/themes/text_styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// -------------------------------------------------------------------------
// Quando for chamar esse componente num StatefulWidget,
// tem que envolver ele com um Form e passar o argumento key:controller.key
// que vem do message_controller.dart
// -------------------------------------------------------------------------

class MessageInput extends StatelessWidget {
  final void Function(String value) onChanged;
  final VoidCallback onPressed;

  const MessageInput({
    Key? key,
    required this.onChanged,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.8,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                ),
              ),
            ),
            TextButton(
              onPressed:
                  onPressed, // Aqui chama sendMessage de forma assincrona
              child: Icon(FontAwesomeIcons.paperPlane),
            )
          ],
        ),
      ),
    );
  }
}
