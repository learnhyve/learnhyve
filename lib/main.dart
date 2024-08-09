import 'package:flutter/material.dart';
import 'package:learn_hyve/feature/auth/screens/welcome_screen.dart';
import 'package:learn_hyve/feature/home/screens/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OnboardingScreen(),
    );
  }
}
