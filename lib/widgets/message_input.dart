// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_message_app/assets/themes/app_colors.dart';
import 'package:flutter_message_app/assets/themes/text_styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// -------------------------------------------------------------------------
// Quando for chamar esse componente num StatefulWidget,
// tem que envolver ele com um Form e passar o argumento key:controller.key
// que vem do message_controller.dart
// -------------------------------------------------------------------------

class MessageInput extends StatelessWidget {
  const MessageInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var controller = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 11),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: size.width * 0.73,
            height: size.height * 0.08,
            child: TextField(
              controller: controller,
              cursorColor: AppColors.purple,
              onChanged: (value) {
                print(value);
              }, // Quando for instanciado, chama controller.OnChange
              style: TextStyles.messageInput,
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.grey,
                hintText: "Escreva sua mensagem aqui...",
                hintStyle: TextStyles.messageInput,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 17, horizontal: 25),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(size.height * 0.08),
                ),
              ),
            ),
          ),
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              color: AppColors.purple,
              borderRadius: BorderRadius.circular(45),
            ),
            child: TextButton(
              onPressed: () {
                print(controller.text);
              }, // Aqui chama sendMessage de forma assincrona
              child: Icon(
                FontAwesomeIcons.paperPlane,
                color: AppColors.grey,
                size: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}
