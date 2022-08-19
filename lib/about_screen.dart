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

        ],
      ),
    );
  }
}
