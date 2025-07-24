import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:provider/provider.dart';
import 'package:chat_via/services/firebase_auth_methods.dart';
// import 'package:chat_via/screens/signup_email_password_screen.dart';
// import 'package:chat_via/screens/login_email_password_screen.dart';
import 'package:chat_via/screens/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          Provider<FirebaseAuthMethods>(
            create: (_) => FirebaseAuthMethods(FirebaseAuth.instance),
          ),
          StreamProvider(
            create: (context) => context.read<FirebaseAuthMethods>().authState,
            initialData: null,
          ),
        ],
        child:MaterialApp(
          title: 'Chat Via',
          theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
        ),
        home: const AuthWrapper(),
      )
    );
  }
}

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User?>();

    // if (firebaseUser != null) {
      return HomeScreen();
    // }
    // return const LoginScreen();
  }
}

