import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/colours/colours.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                child: ClipOval(
                  child: Container(
                    color: myFirstColor,
                    child: ClipOval(
                      child: Image.asset(
                        "images/profile_photo.jpg",
                        scale: 3,
                      ),
                    ),
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
                            textStyle: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          TypewriterAnimatedText(
                            "I'm from Vancouver, BC",
                            textStyle: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          TypewriterAnimatedText(
                            "I'm from BCIT's CST program",
                            textStyle: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          TypewriterAnimatedText(
                            "I love the Halo series",
                            textStyle: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          TypewriterAnimatedText(
                            "I aspire to become a software developer",
                            textStyle: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          TypewriterAnimatedText(
                            "Anyone still reading this?",
                            textStyle: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          TypewriterAnimatedText(
                            "Question of the day: Are there more doors or wheels in the world?",
                            textStyle: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          TypewriterAnimatedText(
                            "\"I am Iron Man\"",
                            textStyle: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                        ],
                        isRepeatingAnimation: true,
                        repeatForever: true,
                        pause: Duration(seconds: 2),
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
                    Spacer(),
                    IconButton(
                      iconSize: 50,
                        onPressed: () {}, icon: Image.network("https://img.icons8.com/metro/308/ffffff/linkedin.png")),
                    IconButton(
                      iconSize: 60,
                        onPressed: () {}, icon: Image.network("https://img.icons8.com/material-rounded/384/ffffff/github.png")),
                    Spacer()
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
