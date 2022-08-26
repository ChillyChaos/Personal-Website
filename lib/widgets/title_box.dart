import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colours/colours.dart';

class TitleBox extends StatelessWidget {
  const TitleBox({
    Key? key,
    required this.title,
    required this.myIcon,
  }) : super(key: key);

  final String title;
  final IconData myIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: myThirdColor,
      height: 400,
      // width: MediaQuery.of(context).size.width,
      child: Center(
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(50)),
          child: Container(
            height: 90,
            width: 400,
            color: myFirstColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: Text(
                    title,
                    style: GoogleFonts.lato(
                        fontSize: 60,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Icon(
                  myIcon,
                  size: 50,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
