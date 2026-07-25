import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Sign UP'),
          SizedBox(height: 20),
          Image.asset(
            'assets/app_logo.png',
            fit: BoxFit.contain,
            width: double.infinity,
            height: 120,
          ),
        ],
      ),
    );
  }
}
