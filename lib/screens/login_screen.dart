import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_hyve/core/common_widgets/app_logo.dart';
import 'package:learn_hyve/core/common_widgets/circular_next_button.dart';
import 'package:learn_hyve/core/common_widgets/parent.dart';

import 'package:learn_hyve/feature/auth/widgets/phone_text_field.dart';
import 'package:learn_hyve/screens/otp_verification_screen.dart';

class LoginScreen extends StatefulWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => const LoginScreen());

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Parent(
      resizeToAvoidBottomInset: true,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Spacer(),
          const AppLogo(height: 59),
          const SizedBox(height: 54),
          Container(
            padding: const EdgeInsets.only(top: 40, left: 31),
            width: double.infinity,
            height: 424,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome Buddy!',
                      style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      'Let’s create a new space for students',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 26),
                    Text(
                      'Enter your phone number ☎',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 32),
                    Padding(
                      padding: const EdgeInsets.only(right: 31, top: 31),
                      child: PhoneTextField(
                        controller: phoneController,
                        keyboardType: TextInputType.phone,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(23),
                      child: CircularNextButton(
                        onTap: () {
                          Navigator.push(
                              context, OtpVerificationScreen.route());
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
