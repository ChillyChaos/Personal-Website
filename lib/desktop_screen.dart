import 'package:flutter/material.dart';
import 'package:personal_website/about_screen.dart';
import 'package:personal_website/colours/colours.dart';
import 'package:personal_website/home_screen.dart';
import 'package:personal_website/logo.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class DesktopScreen extends StatefulWidget {
  const DesktopScreen({Key? key}) : super(key: key);

  @override
  State<DesktopScreen> createState() => _DesktopScreenState();
}

class _DesktopScreenState extends State<DesktopScreen> {
  @override
  Widget build(BuildContext context) {
    final itemController = ItemScrollController();

    Future scrollToHome() async {
      itemController.scrollTo(index: 0, duration: Duration(milliseconds: 500));
    }
    Future scrollToAbout() async {
      itemController.scrollTo(index: 1, duration: Duration(milliseconds: 500));
    }
    Future scrollToProjects() async {
      itemController.scrollTo(index: 2, duration: Duration(milliseconds: 500));
    }
    Future scrollToContact() async {
      itemController.scrollTo(index: 3, duration: Duration(milliseconds: 500));
    }

    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Logo(),
          Spacer(),
          Icon(Icons.computer),
          Spacer(),
          Row(
            children: [
              MaterialButton(
                  onPressed: () {
                    scrollToHome();
                  },
                  child: const Text(
                    "HOME",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  )),
              MaterialButton(
                  onPressed: () {
                    scrollToAbout();
                  },
                  child: const Text(
                    "ABOUT",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  )),
              MaterialButton(
                  onPressed: () {
                    scrollToProjects();
                  },
                  child: const Text(
                    "PROJECTS",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  )),
              MaterialButton(
                  onPressed: () {
                    scrollToContact();
                  },
                  child: const Text(
                    "CONTACT",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  )),
              ElevatedButton(onPressed: () {}, child: Text("RESUME"))
            ],
          ),
            ],
          ),
          shadowColor: Colors.transparent,
          backgroundColor: myFirstColor,
        ),
        body: ScrollablePositionedList.builder(
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return HomeScreen();
            }
            if (index == 1) {
              return AboutScreen();
            }
            if (index == 2) {
              return Container(
                color: Colors.blue,
                height: 600,
                child: Text("Projects"),
              );
            }
            if (index == 3) {
              return Container(
                color: Colors.grey,
                height: 600,
                child: Text("Contact"),
              );
            }
            return Text("TESTER");
          },
          itemScrollController: itemController,
        ));
  }
}
