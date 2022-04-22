import 'package:flutter/material.dart';
import 'package:flash_chat/screens.dart/chat_screen.dart';
import 'package:flash_chat/screens.dart/login_screen.dart';
import 'package:flash_chat/screens.dart/registration_screen.dart';
import 'package:flash_chat/screens.dart/welcome_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: 'welcome_screen',
      routes: {
        'welcome_screen': (context) => WelcomeScreen(),
        'login_screen': (context) => LoginScreen(),
        'registration_screen': (context) => RegistrationScreen(),
        'chat_screen': (context) => ChatScreen(),
      },
    );
  }
}
