import 'package:chat_app/firebase_options.dart';
import 'package:chat_app/screens/chat_screen.dart';
import 'package:chat_app/screens/login_screen.dart';
import 'package:chat_app/screens/register_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xff274460),
      ),
      routes: {
        LoginScreen.id: (context) => const LoginScreen(),
        RegisterScreen.id: (context) => const RegisterScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.id,
    );
  }
}
