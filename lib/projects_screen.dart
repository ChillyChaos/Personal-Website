import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:personal_website/constants/dimensions.dart';
import 'package:personal_website/widgets/title_box.dart';
import 'package:personal_website/url_launcher.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> faceRace = [
      "assets/images/facerace1.png",
      "assets/images/facerace2.png",
      "assets/images/facerace3.png",
      "assets/images/facerace4.png",
      "assets/images/facerace5.png",
      "assets/images/facerace6.png",
    ];

    final List<String> myImages2 = [
      "assets/images/greenscore1.png",
      "assets/images/greenscore2.png",
      "assets/images/greenscore3.png",
      "assets/images/greenscore4.png",
      "assets/images/greenscore5.png",
      "assets/images/greenscore6.png",
    ];

    final List<String> myImages3 = [
      "assets/images/UBC-OPTH-1.png",
      "assets/images/UBC-OPTH-2.png",
      "assets/images/UBC-OPTH-3.png",
    ];

    const String greenscoreText = "Greenscore is a webapp I developed with my "
        "team in Term 1. We were composed of a fellow Term 1 student and two "
        "Term 2 students. We were given a theme by the instructor to create"
        " something with a focus on sustainability and “green” living. We took "
        "inspiration from that and created our app name “Greenscore”. The idea "
        "is that it works similarly to a quiz app where a user is given a "
        "series of questions that gauges their lifestyle and how eco-friendly "
        "it is. The “greener” the user lives, the higher their score. At the "
        "end of the quiz, the user is to be presented with relevant tips that "
        "will help increase their score. "
        "\n\nThis webapp was made with Flutter and Firebase.";

    const String faceraceText = "Facerace is an Android app my team and I "
        "developed in our Android Development class. The idea behind this app "
        "is some people have trouble remembering faces. We came up with a "
        "memory game type app that involves two screens. The first screen "
        "presents a list of faces to remember. In the second screen, the app "
        "randomizes the faces and only 3 of the random 5 will have appeared "
        "on the first screen. "
        "\n\nThis mobile app was made using Android Studio with Java.";

    const String ubcText = "This project is part of BCIT’s Industry Sponsored "
        "Student Project (ISSP) program. Essentially my team and I were tasked"
        " with improving the website of the Ophthalmology department at UBC. "
        "We formed weekly meetings with our clients as well as regular stand-up"
        " meetings to keep up to date with progress. We improved the visuals "
        "and site navigation aspects according to client desires."
        "\n\n This project was done in WordPress.";

    if(MediaQuery.of(context).size.width < tabletWidth) {
      return Column(
        children: [
          const TitleBox(title: "Projects", myIcon: Icons.gradient),
          projectCardMobile(myImages2.length, "Greenscore",
              "https://greenscore-app.web.app/#/", greenscoreText, myImages2, BoxFit.fitHeight),
          projectCardMobile(faceRace.length, "FaceRace", "https://github.com/jshmartin/FaceRace", faceraceText, faceRace, BoxFit.fitHeight),
          projectCardMobile(myImages3.length, "UBC Dept. of Opth.", "https://ophthalmology.med.ubc.ca/", ubcText, myImages3, BoxFit.fitWidth
          )
        ],
      );
    } else {
      return Column(
        children: [
          const TitleBox(title: "Projects", myIcon: Icons.gradient),
          projectCard(myImages2.length, "Greenscore",
              "https://greenscore-app.web.app/#/", greenscoreText, myImages2, BoxFit.fitHeight),
          projectCard2(faceRace.length, "FaceRace", "https://github.com/jshmartin/FaceRace", faceraceText, faceRace, BoxFit.fitHeight),
          projectCard(myImages3.length, "UBC Dept. of Opthalmology", "https://ophthalmology.med.ubc.ca/", ubcText, myImages3, BoxFit.fitWidth
          )
        ],
      );
    }

  }

  Widget infoCard(String title, String url, String content) => Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              IconButton(
                  iconSize: 30,
                  color: Colors.white,
                  onPressed: () {
                    launchLink(url);
                  },
                  icon: const Icon(Icons.open_in_browser))
            ],
          ),
          SizedBox(
              height: 200,
              width: 900,
              child: Text(
                content,
                style: const TextStyle(fontSize: 20, color: Colors.white),
              )),
        ],
      );

  Widget projectCard(int length, String title, String link,
      String projectContent, List<String> images, BoxFit myFit) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        infoCard(title, link, projectContent),
        SizedBox(
          width: 400,
          child: CarouselSlider.builder(
              itemCount: length,
              itemBuilder: (context, index, realIndex) {
                final myImage = images[index];
                return buildImage(myImage, index, myFit);
              },
              options: CarouselOptions(height: 400)),
        ),
      ],
    );
  }

  Widget projectCard2(int length, String title, String link,
      String projectContent, List<String> images, BoxFit myFit) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: 400,
          child: CarouselSlider.builder(
              itemCount: length,
              itemBuilder: (context, index, realIndex) {
                final myImage = images[index];
                return buildImage(myImage, index, myFit);
              },
              options: CarouselOptions(height: 400)),
        ),
        infoCard(title, link, projectContent),
      ],
    );
  }

  Widget projectCardMobile(int length, String title, String link,
      String projectContent, List<String> images, BoxFit myFit) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: 500,
          child: CarouselSlider.builder(
              itemCount: length,
              itemBuilder: (context, index, realIndex) {
                final myImage = images[index];
                return buildImage(myImage, index, myFit);
              },
              options: CarouselOptions(height: 400)),
        ),
        infoCardMobile(title, link, projectContent),
      ],
    );
  }

  Widget infoCardMobile(String title, String url, String content) => Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold),
          ),
          IconButton(
              iconSize: 30,
              color: Colors.white,
              onPressed: () {
                launchLink(url);
              },
              icon: const Icon(Icons.open_in_browser))
        ],
      ),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: SizedBox(
            height: 500,
            child: Text(
              content,
              style: const TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.start,
            )),
      ),
    ],
  );

  Widget buildImage(String myImage, int index, BoxFit fit) => Container(
        // margin: EdgeInsets.symmetric(horizontal: 12),
        width: 280,
        color: Colors.white,
        child: Image.asset(
          myImage,
          fit: fit,
        ),
      );
}
