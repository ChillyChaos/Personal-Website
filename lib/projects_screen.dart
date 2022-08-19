import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_website/colours/colours.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final List<String> myImages1 = [
      "assets/images/Facerace_Screenshot.png",
      "assets/images/Facerace_Screenshot2.png",
    ];

    final List<String> myImages2 = [
      "assets/images/Greenscore_Screenshot.png",
      "assets/images/Greenscore_Screenshot2.png",
    ];

    final List<String> myImages3 = [
      "assets/images/UBC-OPTH_Screenshot.png",
      "assets/images/UBC_Giving.png",
    ];

    return Column(
      children: [
        Container(
          color: myBackgroundColor,
          height: 100,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Container(
              height: 50,
              width: 300,
              color: myFirstColor,
              child: Center(
                child: Text("PROJECTS", style: GoogleFonts.lato(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),),
              ),
            ),
          ),
        ),
        CarouselSlider.builder(itemCount: myImages2.length, itemBuilder: (context, index, realIndex) {
          final myImage = myImages2[index];
          return buildImage(myImage, index);

        }, options: CarouselOptions(height: 400)),
        CarouselSlider.builder(itemCount: myImages3.length, itemBuilder: (context, index, realIndex) {
          final myImage = myImages3[index];
          return buildImage(myImage, index);

        }, options: CarouselOptions(height: 400)),

      ],
    );
  }

  Widget buildImage(String myImage, int index) => Container(
    // margin: EdgeInsets.symmetric(horizontal: 12),
    width: 500,
    color: Colors.white,
    child: Image.asset(myImage,fit: BoxFit.cover,),
  );
}
