import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/colours/colours.dart';
import 'package:personal_website/url_launcher.dart';

import 'constants/dimensions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (MediaQuery
        .of(context)
        .size
        .width < mobileWidth) {
      return Container(
        height: 800,
        color: myThirdColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              flex: 2,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                    const Radius.circular(20)),
                child: Image.asset(
                  "images/profile.jpg",
                  scale: 7,
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                child: Container(
                  padding: const EdgeInsets.all(25),
                  color: myFirstColor,
                  height: 250,
                  child: Center(
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          "Hi! My name is Joshua Martinez",
                          textStyle: const TextStyle(
                              fontSize: 30, color: Colors.white),
                        ),
                        TyperAnimatedText(
                          "I'm from Vancouver, BC",
                          textStyle: const TextStyle(
                              fontSize: 30, color: Colors.white),
                        ),
                        RotateAnimatedText(
                          "I'm from BCIT's CST program",
                          textStyle: const TextStyle(
                              fontSize: 30, color: Colors.white),
                        ),
                        FadeAnimatedText(
                          "I aspire to become a software developer",
                          textStyle: const TextStyle(
                              fontSize: 30, color: Colors.white),
                        ),
                        RotateAnimatedText(
                          "Are you still reading this?",
                          textStyle: const TextStyle(
                              fontSize: 30, color: Colors.white),
                        ),
                        WavyAnimatedText(
                          "I love the Halo series",
                          textStyle: const TextStyle(
                              fontSize: 30, color: Colors.white),
                        ),
                        TyperAnimatedText(
                          "Question of the day: Are there more doors or wheels in the world?",
                          textStyle: const TextStyle(
                              fontSize: 30, color: Colors.white),
                        ),
                        RotateAnimatedText(
                          "\"I am Iron Man\"",
                          textStyle: const TextStyle(
                              fontSize: 30, color: Colors.white),
                        ),
                      ],
                      isRepeatingAnimation: true,
                      repeatForever: true,
                      pause: const Duration(seconds: 2),
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                child: Container(
                  color: myFirstColor,
                  width: 400,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Spacer(),
                      IconButton(
                          iconSize: 50,
                          onPressed: () {
                            const url = "https://www.linkedin.com/in/jshmartnz/";
                            launchLink(url);
                          },
                          icon: Image.network(
                              "https://img.icons8.com/metro/308/ffffff/linkedin.png")),
                      IconButton(
                          iconSize: 60,
                          onPressed: () {
                            const url = "https://github.com/jshmartin";
                            launchLink(url);
                          },
                          icon: Image.network(
                              "https://img.icons8.com/material-rounded/384/ffffff/github.png")),
                      IconButton(
                          iconSize: 60,
                          color: Colors.white,
                          onPressed: () {
                            const url = "https://drive.google.com/file/d/1WD-IgD3_Em_o00OOltehR-zyyOzZF8no/view?usp=sharing";
                            launchLink(url);
                          }, icon: const Icon(Icons.document_scanner)),
                      const Spacer(),

                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      );
    } else {
      return Container(
        height: 800,
        color: myThirdColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                        const Radius.circular(20)),
                    child: Image.asset(
                      "images/profile.jpg",
                      scale: 7,
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    child: Container(
                      padding: const EdgeInsets.all(25),
                      color: myFirstColor,
                      height: 250,
                      child: Center(
                        child: AnimatedTextKit(
                          animatedTexts: [
                            TypewriterAnimatedText(
                              "Hi! My name is Joshua Martinez",
                              textStyle: const TextStyle(
                                  fontSize: 30, color: Colors.white),
                            ),
                            TyperAnimatedText(
                              "I'm from Vancouver, BC",
                              textStyle: const TextStyle(
                                  fontSize: 30, color: Colors.white),
                            ),
                            RotateAnimatedText(
                              "I'm from BCIT's CST program",
                              textStyle: const TextStyle(
                                  fontSize: 30, color: Colors.white),
                            ),
                            FadeAnimatedText(
                              "I aspire to become a software developer",
                              textStyle: const TextStyle(
                                  fontSize: 30, color: Colors.white),
                            ),
                            RotateAnimatedText(
                              "Are you still reading this?",
                              textStyle: const TextStyle(
                                  fontSize: 30, color: Colors.white),
                            ),
                            WavyAnimatedText(
                              "I love the Halo series",
                              textStyle: const TextStyle(
                                  fontSize: 30, color: Colors.white),
                            ),
                            TyperAnimatedText(
                              "Question of the day: Are there more doors or wheels in the world?",
                              textStyle: const TextStyle(
                                  fontSize: 30, color: Colors.white),
                            ),
                            RotateAnimatedText(
                              "\"I am Iron Man\"",
                              textStyle: const TextStyle(
                                  fontSize: 30, color: Colors.white),
                            ),
                          ],
                          isRepeatingAnimation: true,
                          repeatForever: true,
                          pause: const Duration(seconds: 2),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Flexible(
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                child: Container(
                  color: myFirstColor,
                  width: 400,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Spacer(),
                      IconButton(
                          iconSize: 50,
                          onPressed: () {
                            const url = "https://www.linkedin.com/in/jshmartnz/";
                            launchLink(url);
                          },
                          icon: Image.network(
                              "https://img.icons8.com/metro/308/ffffff/linkedin.png")),
                      IconButton(
                          iconSize: 60,
                          onPressed: () {
                            const url = "https://github.com/jshmartin";
                            launchLink(url);
                          },
                          icon: Image.network(
                              "https://img.icons8.com/material-rounded/384/ffffff/github.png")),
                      IconButton(
                          iconSize: 60,
                          color: Colors.white,
                          onPressed: () {
                            const url = "https://drive.google.com/file/d/1WD-IgD3_Em_o00OOltehR-zyyOzZF8no/view?usp=sharing";
                            launchLink(url);
                          }, icon: const Icon(Icons.document_scanner)),
                      const Spacer(),

                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }
  }
}
