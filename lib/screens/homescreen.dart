// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_hyve/core/constants/color_constants.dart';
import 'package:learn_hyve/core/constants/image_constants.dart';
import 'package:learn_hyve/widgets/home_row.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static route() => MaterialPageRoute(builder: (context) => HomeScreen());
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final dw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
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
      backgroundColor: Color.fromRGBO(233, 240, 243, 1),
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                height: dw * 0.6,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(28),
                        bottomRight: Radius.circular(28))),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'DD.MM.YYYY',
                          prefixIcon: Icon(Icons.search),
                          labelStyle: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.w400),
                          labelText: 'Search for notes, people, doubts etc..',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(26.0))),
                    ),
                    SizedBox(
                      height: dw * 0.05,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          HomepageRowIcon(
                            title: 'Notes',
                            icon: Image.asset(
                              ImageConstants.notes,
                              color: Colors.white,
                            ),
                            color: Color.fromRGBO(255, 109, 112, 1),
                          ),
                          HomepageRowIcon(
                              title: 'Doubts',
                              icon: Icon(
                                Icons.question_mark_sharp,
                                color: Colors.white,
                              ),
                              color: Color.fromRGBO(86, 181, 252, 1)),
                          HomepageRowIcon(
                              title: 'Tests',
                              icon: Image.asset(
                                ImageConstants.notes,
                                color: Colors.white,
                              ),
                              color: Color.fromRGBO(178, 102, 225, 1)),
                          HomepageRowIcon(
                              title: 'News',
                              icon: Image.asset(
                                ImageConstants.news,
                                color: Colors.white,
                              ),
                              color: Color.fromRGBO(104, 205, 108, 1)),
                          HomepageRowIcon(
                            title: 'More',
                            icon: Image.asset(
                              ImageConstants.more,
                              color: Colors.white,
                            ),
                            color: Color.fromRGBO(255, 173, 91, 1),
                          ),
                        ]),
                    SizedBox(
                      height: 30,
                    ),
                    TabBar(
                      dividerColor: Colors.transparent,
                      indicatorColor: ColorConstants.primaryColor,
                      indicatorSize: TabBarIndicatorSize.tab,
                      tabs: [
                        Tab(
                          text: 'Feeds',
                        ),
                        Tab(
                          text: 'Workshops',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: dw,
                child: const TabBarView(
                  children: [
                    Text(
                      'Coming Soon . . .',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Coming Soon. . . ',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
