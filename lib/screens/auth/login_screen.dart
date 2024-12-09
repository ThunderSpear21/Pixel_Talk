import 'package:flutter/material.dart';

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
          Positioned(
            top: mq.height * 0.15,
            left: mq.width * 0.25,
            width: mq.width * 0.5,
            child: Image.asset('images/icon.png'),
          ),
          Positioned(
            bottom: mq.height * 0.15,
            left: mq.width * 0.08,
            width: mq.width * 0.84,
            height: mq.height * 0.07,
            child: ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
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
