import 'package:flutter/cupertino.dart';
import 'package:flutter_message_app/models/user_model.dart';
import 'package:flutter_message_app/services/auth/google_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController {
  final authController = AuthController();
  Future<void> googleSignIn(BuildContext context) async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );
    try {
      final response = await _googleSignIn.signIn();
      final user =
          UserModel(name: response!.displayName!, photoUrl: response.photoUrl);
      authController.setUser(context, user);
    } catch (error) {
      authController.setUser(context, null);
    }
  }
}
