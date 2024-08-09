import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_hyve/feature/auth/screens/welcome_screen.dart';
import 'package:learn_hyve/feature/home/screens/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

ThemeData buildTheme() {
  final ThemeData base = ThemeData();
  return base.copyWith(
    hintColor: Colors.red,
    primaryColor: Colors.black,
    colorScheme:
        ColorScheme.fromSeed(seedColor: Color.fromRGBO(255, 255, 255, 0.43)),
    textTheme: Typography.whiteMountainView,
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: GoogleFonts.inter(color: Color.fromRGBO(255, 255, 255, 0.43)),
      hintStyle: GoogleFonts.inter(
          fontWeight: FontWeight.w400,
          fontSize: 16,
          color: Color.fromRGBO(255, 255, 255, 0.43)),
      enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color.fromRGBO(247, 146, 33, 1)),
          borderRadius: BorderRadius.circular(26.0)),
      focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color.fromRGBO(247, 146, 33, 1)),
          borderRadius: BorderRadius.circular(26.0)),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: buildTheme(),
      home: WelcomeScreen(),
    );
  }
}
