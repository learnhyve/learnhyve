import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_hyve/core/common_widgets/app_logo.dart';
import 'package:learn_hyve/core/common_widgets/circular_next_button.dart';
import 'package:learn_hyve/core/common_widgets/parent.dart';
import 'package:learn_hyve/screens/onboarding_screen.dart';
import 'package:pinput/pinput.dart';

class OtpVerificationScreen extends StatefulWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => const OtpVerificationScreen());

  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Parent(
      resizeToAvoidBottomInset: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
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
            child: Padding(
              padding: const EdgeInsets.only(left: 5, right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Verify Please!',
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 7),
                      Text(
                        'Just verify your number buddy to stay spam free',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 26),
                      Text(
                        'Enter OTP from your message 📲',
                        style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      const SizedBox(height: 28),
                      Pinput(
                        controller: otpController,
                        length: 6,
                        defaultPinTheme: PinTheme(
                          height: 42,
                          width: 42,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: const Color(0xFFD9D9D9),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        separatorBuilder: (index) => const SizedBox(width: 16),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(23),
                        child: CircularNextButton(
                          onTap: () =>
                              Navigator.push(context, OnboardingScreen.route()),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
