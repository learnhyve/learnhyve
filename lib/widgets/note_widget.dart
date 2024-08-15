import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_hyve/core/constants/image_constants.dart';
import 'package:learn_hyve/widgets/home_row.dart';

class NoteWidget extends StatelessWidget {
  const NoteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dw = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
      height: dw / 1.2,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(18))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    height: 40,
                    width: 40,
                    ImageConstants.pfp,
                  ),
                  Container(
                    width: dw / 3.2,
                    margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ritesh Sharma',
                          style: GoogleFonts.inter(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '2h ago',
                                style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 8),
                                height: 20,
                                width: 20,
                                padding: EdgeInsets.all(4.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(36),
                                  ),
                                  color: Color.fromRGBO(255, 109, 112, 1),
                                ),
                                child: Image.asset(
                                  ImageConstants.notes,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Wrap(
                spacing: 8,
                crossAxisAlignment: WrapCrossAlignment.center,
                direction: Axis.vertical,
                children: [
                  Container(
                    height: 20,
                    padding: EdgeInsets.only(left: 12, right: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                      color: Color.fromRGBO(215, 215, 215, 1),
                    ),
                    child: Center(
                      child: Text(
                        'History',
                        style: GoogleFonts.inter(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  Container(
                    height: 20,
                    padding: EdgeInsets.only(left: 12, right: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                      color: Color.fromRGBO(215, 215, 215, 1),
                    ),
                    child: Center(
                      child: Text(
                        'B.A 1st year',
                        style: GoogleFonts.inter(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'This is some notes of 1st chapter of History',
              style: GoogleFonts.inter(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 14),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(bottom: 2.4),
            height: 146,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: Offset(0, 1),
                ),
              ],
              borderRadius: BorderRadius.all(
                Radius.circular(18),
              ),
            ),
            child: Builder(builder: (context) {
              return Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(18.0),
                      child: Image.asset(
                        ImageConstants.temp_note,
                        fit: BoxFit.fitWidth,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(18),
                      ),
                      color: Color.fromRGBO(255, 255, 255, 0.6),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: dw * 0.1,
                      width: dw * 0.3,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 135, 13, 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(14),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Open Notes',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  LikeButtonWidget(),
                  IconButton(
                    padding: EdgeInsets.zero,
                    iconSize: 22,
                    visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                    onPressed: () {},
                    icon: Icon(
                      Icons.thumb_down_outlined,
                    ),
                  ),
                  IconButton(
                      padding: EdgeInsets.zero,
                      iconSize: 22,
                      visualDensity:
                          VisualDensity(horizontal: -4, vertical: -4),
                      onPressed: () {},
                      icon: Icon(
                        Icons.comment_outlined,
                      )),
                  Text(
                    '3 Replies',
                    style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87),
                  )
                ],
              ),
              Row(
                children: [
                  IconButton(
                      padding: EdgeInsets.zero,
                      iconSize: 22,
                      visualDensity:
                          VisualDensity(horizontal: -4, vertical: -4),
                      onPressed: () {},
                      icon: Image.asset(
                        ImageConstants.share_button,
                        height: 16,
                      )),
                  IconButton(
                      padding: EdgeInsets.zero,
                      iconSize: 20,
                      visualDensity:
                          VisualDensity(horizontal: -4, vertical: -4),
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        ImageConstants.three_dots,
                        height: 16,
                      )),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class LikeButtonWidget extends StatefulWidget {
  const LikeButtonWidget({
    super.key,
  });

  @override
  State<LikeButtonWidget> createState() => _LikeButtonWidgetState();
}

class _LikeButtonWidgetState extends State<LikeButtonWidget> {
  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        color: Colors.black,
        padding: EdgeInsets.zero,
        iconSize: 24,
        visualDensity: VisualDensity(horizontal: -4, vertical: -4),
        onPressed: () {
          setState(() {
            liked = !liked;
          });
        },
        icon: liked
            ? Icon(
                Icons.star,
                color: Colors.yellow,
              )
            : Icon(
                Icons.star_border_outlined,
                color: Colors.black,
              ));
  }
}
