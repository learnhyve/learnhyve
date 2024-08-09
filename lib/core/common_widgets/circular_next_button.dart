import 'package:flutter/material.dart';
import 'package:learn_hyve/core/constants/color_constants.dart';

class CircularNextButton extends StatelessWidget {
  final VoidCallback onTap;

  const CircularNextButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 68,
        height: 68,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(247, 146, 33, 1),
          shape: BoxShape.circle,
        ),
        child: const Center(
            child: Icon(
          Icons.arrow_forward,
          color: Colors.white,
          size: 38,
        )),
      ),
    );
  }
}
