import 'package:flutter/material.dart';
import 'package:learn_hyve/core/constants/image_constants.dart';

AppBar mainAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    centerTitle: true,
    leading: IconButton(
      onPressed: () {},
      icon: Image.asset(
        ImageConstants.pfp,
      ),
    ),
    title: Image.asset(
      ImageConstants.logo_black,
      width: 170,
    ),
    actions: [
      IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          color: Colors.black,
          icon: Image.asset(
            ImageConstants.notification,
            color: Colors.black,
            height: 28,
          )),
      IconButton(
          padding: const EdgeInsets.only(right: 16),
          onPressed: () {},
          color: Colors.black,
          icon: Image.asset(
            ImageConstants.chat,
            color: Colors.black,
            height: 26,
          )),
      SizedBox(
        width: 12,
      )
    ],
  );
}
