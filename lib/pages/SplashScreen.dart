import 'dart:async';

import 'package:finance_mate/pages/Onboarding%20Screen.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to the onboarding screen after a delay
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement<void, void>(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => const OnboardingPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("lib/assets/Logo.png", height: 350, width: 350),
            const SizedBox(height: 30),
            const CircularProgressIndicator(
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
