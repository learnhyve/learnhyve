import 'package:flutter/material.dart';
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
      padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20),
      height: dw / 1.4,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(18))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                  fontSize: 12),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 146,
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(spreadRadius: 0.1, blurRadius: 0.2)],
                borderRadius: BorderRadius.all(Radius.circular(18))),
            child: Builder(builder: (context) {
              return Stack(
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        ImageConstants.temp_note,
                        fit: BoxFit.fitWidth,
                      )),
                  Container(
                    color: Color.fromRGBO(255, 255, 255, 0.6),
                  ),
                  /*  Container(
                    alignment: Alignment.center,
                    height: dw * 0.1,
                    width: dw * 0.3,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(
                        Radius.circular(14),
                      ),
                    ),
                  ), */
                ],
              );
            }),
          )
        ],
      ),
    );
  }
}
