// ignore_for_file: avoid_print

import 'package:app_payflow/shared/auth/auth_controller.dart';
import 'package:app_payflow/shared/models/user_model.dart';
import 'package:flutter/widgets.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController {
  final authControoler = AuthControoler();
  Future<void> googleSignIn(BuildContext context) async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );
    try {
      final response = await _googleSignIn.signIn();
      final user = UserModel(
        name: response!.displayName!,
        photoURL: response.photoUrl,
      );
      authControoler.setUser(context, user);
      print(response);
    } catch (error) {
      authControoler.setUser(context, null);
      print(error);
    }
  }
}
