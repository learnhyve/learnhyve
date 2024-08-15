import 'package:flutter/material.dart';
import 'package:learn_hyve/core/common_widgets/app_logo.dart';
import 'package:learn_hyve/core/constants/image_constants.dart';

class Parent extends StatelessWidget {
  final Widget? child;
  final bool resizeToAvoidBottomInset;
  const Parent({super.key, this.child, this.resizeToAvoidBottomInset = true});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageConstants.welcomeScreenBackground),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ColorFilter.mode(
              Colors.black.withOpacity(0.7), BlendMode.luminosity),
          child: child,
        ),
      ),
    );
    ;
  }
}
