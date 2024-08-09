import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_hyve/core/common_widgets/circular_next_button.dart';
import 'package:learn_hyve/core/constants/image_constants.dart';
import 'package:learn_hyve/screens/homescreen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  static route() =>
      MaterialPageRoute(builder: (context) => const OnboardingScreen());
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController dobController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void removeFocus() {
      FocusScope.of(context).requestFocus(new FocusNode());
    }

    final dw = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () => removeFocus(),
      child: Scaffold(
        body: Stack(children: [
          Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(ImageConstants.welcomeScreenBackground),
                  fit: BoxFit.fitHeight,
                  alignment: Alignment.center),
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
                  RichText(
                    text: TextSpan(
                      text: 'Set up your profile\nbuddy! ✍️',
                      style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
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
                          bottom:
                              MediaQuery.of(context).viewInsets.bottom + 30),
                      controller: firstNameController,
                      decoration: InputDecoration(
                          label: Text('First Name'),
                          hintText: 'Your First Name',
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(247, 146, 33, 1)),
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
                          bottom:
                              MediaQuery.of(context).viewInsets.bottom + 30),
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
                      readOnly: true,
                      onTap: () async => await showDatePicker(
                        context: context,
                        firstDate: DateTime(1920),
                        lastDate: DateTime.now(),
                      ).then((value) {
                        value == null
                            ? null
                            : dobController.text =
                                value.toIso8601String().split('T')[0];
                        removeFocus();
                      }),
                      scrollPadding: EdgeInsets.only(
                          bottom:
                              MediaQuery.of(context).viewInsets.bottom + 30),
                      controller: dobController,
                      decoration: InputDecoration(
                          hintText: 'DD.MM.YYYY',
                          labelText: 'Enter your date of birth',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(26.0))),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircularNextButton(
            onTap: () => Navigator.pushReplacement(context, HomeScreen.route()),
          ),
        ),
      ),
    );
  }
}
