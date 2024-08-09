// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:learn_hyve/core/constants/image_constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static route() => MaterialPageRoute(builder: (context) => HomeScreen());
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset(
            ImageConstants.pfp,
          ),
        ),
        title: Image.asset(
          ImageConstants.logo_black,
          width: 180,
        ),
        actions: [
          IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              color: Colors.black,
              icon: Image.asset(
                ImageConstants.notification,
                color: Colors.black,
                height: 24,
              )),
          IconButton(
              onPressed: () {},
              color: Colors.black,
              icon: Image.asset(
                ImageConstants.chat,
                color: Colors.black,
                height: 24,
              )),
        ],
      ),
      body: SingleChildScrollView(),
    );
  }
}
