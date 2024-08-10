// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_hyve/core/constants/color_constants.dart';
import 'package:learn_hyve/core/constants/image_constants.dart';
import 'package:learn_hyve/screens/tabscreens/notes_tab.dart';
import 'package:learn_hyve/screens/tabscreens/workshops_tab.dart';
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
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
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
                  height: 28,
                )),
            IconButton(
                onPressed: () {},
                color: Colors.black,
                icon: Image.asset(
                  ImageConstants.chat,
                  color: Colors.black,
                  height: 26,
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
                  height: dw * 0.4,
                  color: Colors.white,
                  child: Column(
                    children: [
                      TextField(
                        style: GoogleFonts.poppins(
                            color: Color.fromRGBO(101, 101, 101, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromRGBO(231, 228, 228, 1),
                            prefixIcon: Icon(Icons.search),
                            hintStyle: GoogleFonts.poppins(
                                color: Color.fromRGBO(154, 154, 154, 1),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                            hintText: 'Search for notes, people, doubts etc..',
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
                    ],
                  ),
                ),
                Container(
                  height: dw * 0.15,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(28),
                          bottomRight: Radius.circular(28))),
                  child: TabBar(
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
                ),
                SizedBox(
                  height: dw,
                  child: const TabBarView(
                    children: [NotesTab(), WorkshopsTab()],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
