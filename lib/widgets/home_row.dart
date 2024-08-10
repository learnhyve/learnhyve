import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomepageRowIcon extends StatelessWidget {
  final Widget icon;
  final Color color;
  final String title;
  HomepageRowIcon(
      {super.key,
      required this.icon,
      required this.color,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 48,
            width: 48,
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(36),
              ),
              color: color,
            ),
            child: icon),
        Text(
          title,
          style: GoogleFonts.inter(
              fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black),
        )
      ],
    );
  }
}
