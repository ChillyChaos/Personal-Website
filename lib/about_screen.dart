import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_website/colours/colours.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mySecondColor,
      child: Column(
        children: [
          Text("A little bit about me:",
              style: GoogleFonts.lato(
                  fontSize: 50,
                  fontWeight: FontWeight.w600,
                  color: Colors.white)),
          Row(
            children: [
              Spacer(),
              Flexible(
                flex: 2,
                child: Container(
                  height: 400,
                  width: 600,
                  color: Colors.grey,
                  child: Column(
                    children: [
                      Text("Tech-related stuff"),
                      Text("So I'm a student from BCIT studying in the Computer Systems Technology Diploma Program.")
                    ],
                  ),
                ),
              ),
              Spacer(),
              Flexible(
                flex: 6,
                child: Container(
                  color: Colors.red,
                  height: 400,
                  width: 900,
                  child: Text("Test1"),
                ),
              ),
              Spacer(),
              Flexible(
                flex: 2,
                child: Container(
                  color: Colors.brown,
                  height: 400,
                  width: 700,
                  child: Text("Test1"),
                ),
              ),
              Spacer(),
            ],
          )

        ],
      ),
    );
  }
}
