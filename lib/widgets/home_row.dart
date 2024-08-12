import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomepageRowIcon extends StatelessWidget {
  final Widget icon;
  final Color color;
  final double size;
  final String? title;
  HomepageRowIcon(
      {super.key,
      required this.size,
      required this.icon,
      required this.color,
      this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: size,
            width: size,
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(36),
              ),
              color: color,
            ),
            child: icon),
        title == null
            ? Spacer()
            : Text(
                title!,
                style: GoogleFonts.inter(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              )
      ],
    );
  }
}
