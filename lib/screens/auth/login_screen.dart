import 'package:flutter/material.dart';
import 'package:lets_chat/screens/home_screen.dart';

import '../../main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text("Welcome to Lets Chat"),
      ),
      body: Stack(
        children: [
          AnimatedPositioned(
            top: mq.height * 0.20,
            left: mq.width * 0.25,
            width: mq.width * 0.5,
            duration: const Duration(milliseconds: 800),
            child: Image.asset('images/icon.png'),
          ),
          AnimatedPositioned(
            bottom: mq.height * 0.15,
            left: mq.width * 0.08,
            width: mq.width * 0.84,
            height: mq.height * 0.07,
            duration: const Duration(milliseconds: 800),
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (_) => const HomeScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                elevation: 2,
              ),
              label: const Text(
                "Sign in with Google",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              icon: Image.asset(
                'images/google.png',
                height: 24, // Ensure the icon fits well
                width: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
