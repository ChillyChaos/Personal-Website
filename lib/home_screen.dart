import 'package:flutter/material.dart';
import 'package:personal_website/colours/colours.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      color: myThirdColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 2,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(50)),
              child: Container(
                padding: const EdgeInsets.all(50),
                color: myFirstColor,
                height: 250,
                child: const Center(
                  child: Text(
                    " Hi! My name is Joshua Martinez.",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
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
                child: const Center(
                  child: Text(
                    " I'm an aspiring software developer based out of Vancouver, BC",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
