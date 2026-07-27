import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            Image.asset(
              'assets/images/onboarding.png',
              fit: BoxFit.contain,
              width: double.infinity,
              height: 200,
            ),
            SizedBox(height: 5),
            Text(
              'Welcome to Planner App',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            GestureDetector(
              child: Container(
                width: 110,
                height: 40,
                child: Center(child: Text('Get Started')),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black12),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0.3, 0.3),
                      blurRadius: 2,
                      color: Colors.grey,
                    ),
                  ],

                  // boxShadow: [BoxShadow(offset: Offset(0.5, 0.5))],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
