import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:learn_hyve/core/common_widgets/app_logo.dart';
import 'package:learn_hyve/core/constants/image_constants.dart';
import 'package:learn_hyve/widgets/swipe_to_enter_button.dart';
import 'package:learn_hyve/screens/login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => const WelcomeScreen());

  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final dh = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: dh,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ImageConstants.welcomeScreenBackground,
            ),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: BackdropFilter(
          filter: ColorFilter.mode(
              Colors.black.withOpacity(0.7), BlendMode.luminosity),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(height: 35),
                const AppLogo(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 35),
                  child: SwipeToEnterButton(
                    onSwipe: () {
                      Navigator.push(context, LoginScreen.route());
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
