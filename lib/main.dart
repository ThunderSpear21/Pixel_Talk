import 'package:flutter/material.dart';
import 'package:lets_chat/screens/auth/login_screen.dart';

//import 'package:lets_chat/screens/home_screen.dart';
late Size mq;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lets Chat',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            elevation: 1,
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 20,
            ),
            backgroundColor: Colors.white54,
          )),
      home: const LoginScreen(),
    );
  }
}
