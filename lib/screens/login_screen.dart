import 'package:chat_via/screens/login_email_password_screen.dart';
import 'package:chat_via/screens/signup_email_password_screen.dart';
import 'package:chat_via/services/firebase_auth_methods.dart';
import 'package:chat_via/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centers vertically
            crossAxisAlignment: CrossAxisAlignment.center, // Centers horizontally
            children: [
              CustomButton(
                onTap: () {
                  context.read<FirebaseAuthMethods>().signInWithGoogle(context);
                },
                text: 'Google Sign In',
              ),
            ],
          ),
        ),
      ),
    );
  }
}