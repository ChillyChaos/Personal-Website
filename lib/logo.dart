import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("< Josh M. >", style: GoogleFonts.lato(
          fontSize: 36,
          fontWeight: FontWeight.bold
        )),
      ],
    );
  }
}
