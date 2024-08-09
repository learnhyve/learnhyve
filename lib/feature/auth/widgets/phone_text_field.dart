import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PhoneTextField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;

  const PhoneTextField({
    super.key,
    this.controller,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      maxLength: 10,
      decoration: InputDecoration(
        counterText: '',
        prefix: Text(
          '+91 |  ',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
