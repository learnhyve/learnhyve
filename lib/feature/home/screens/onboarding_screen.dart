import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_hyve/core/constants/image_constants.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final dw = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(children: [
        Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(ImageConstants.welcomeScreenBackground),
                fit: BoxFit.fitHeight,
                alignment: Alignment.topRight),
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: const Color.fromRGBO(27, 27, 27, 0.9),
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SafeArea(
                    child: SizedBox(
                      width: dw / 2,
                      child: Image.asset(
                        ImageConstants.logo,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: dw * 0.101,
                ),
                Text(
                  'Set up your profile\nbuddy! ',
                  style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                SizedBox(
                  height: dw * 0.02,
                ),
                Text(
                  'Please fill your all details to get more\nvisibility ',
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                SizedBox(
                  height: dw * 0.053,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: dw / 34),
                  child: TextField(
                    scrollPadding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom + 30),
                    controller: firstNameController,
                    decoration: InputDecoration(
                        label: Text('First Name'),
                        hintText: 'Your First Name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(26.0))),
                  ),
                ),
                SizedBox(
                  height: dw * 0.053,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: dw / 35.0),
                  child: TextField(
                    scrollPadding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom + 30),
                    controller: lastNameController,
                    decoration: InputDecoration(
                        hintText: 'Your Last Name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(26.0))),
                  ),
                ),
                SizedBox(
                  height: dw * 0.053,
                ),
                Padding(
                  //TODO: Add Datepicker 
                  padding: EdgeInsets.symmetric(vertical: dw / 35.0),
                  child: TextField(
                    scrollPadding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom + 30),
                    controller: lastNameController,
                    decoration: InputDecoration(
                        hintText: 'DD.MM.YYYY',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(26.0))),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
