import 'package:flutter/material.dart';
import 'package:learn_hyve/core/constants/image_constants.dart';

class AppLogo extends StatelessWidget {
  final double? height;
  final double? width;

  const AppLogo({super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Image.asset(ImageConstants.logo),
    );
  }
}
