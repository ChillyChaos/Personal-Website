import 'package:flutter/material.dart';
import 'package:personal_website/about_screen.dart';
import 'package:personal_website/colours/colours.dart';
import 'package:personal_website/contact_screen.dart';
import 'package:personal_website/home_screen.dart';
import 'package:personal_website/logo.dart';
import 'package:personal_website/projects_screen.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:url_launcher/url_launcher.dart';

class DesktopScreen extends StatefulWidget {
  const DesktopScreen({Key? key}) : super(key: key);

  @override
  State<DesktopScreen> createState() => _DesktopScreenState();
}

class _DesktopScreenState extends State<DesktopScreen> {

  launchResume(String url) async {
    Uri myUri = Uri.parse(url);
    if (await canLaunchUrl(myUri)) {
      await launchUrl(myUri);
    } else {
      throw "Could not launch $url";
    }
  }

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                  onPressed: () {
                    scrollToHome();
                  },
                  child: HeaderOption("HOME")
              ),
              MaterialButton(
                  onPressed: () {
                    scrollToAbout();
                  },
                  child: HeaderOption("ABOUT")
              ),
              MaterialButton(
                  onPressed: () {
                    scrollToProjects();
                  },
                  child: HeaderOption("PROJECTS")
                  ),
              MaterialButton(
                  onPressed: () {
                    scrollToContact();
                  },
                  child: HeaderOption("CONTACT")),
              ElevatedButton(onPressed: () {
                const url = "https://drive.google.com/file/d/1WD-IgD3_Em_o00OOltehR-zyyOzZF8no/view?usp=sharing";
                launchResume(url);

              }, child: Text("RESUME", style: TextStyle(fontSize: 20),))
            ],
          ),
            ],
          ),
          shadowColor: Colors.transparent,
          backgroundColor: myFirstColor,
        ),
        body: ScrollablePositionedList.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return HomeScreen();
            }
            if (index == 1) {
              return AboutScreen();
            }
            if (index == 2) {
              return ProjectsScreen();
            }
            if (index == 3) {
              return ContactScreen();
            }
            return Footer();
          },
          itemScrollController: itemController,
        ));
  }

  Widget Footer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Spacer(),
        Text("Made with ", style: TextStyle(color: Colors.white, fontSize: 20),),
        IconButton(onPressed: () {}, icon: Image.network("https://img.icons8.com/fluency/48/000000/like.png")),
        Text("with Flutter", style: TextStyle(color: Colors.white, fontSize: 20),),
        Spacer()
      ],
    );
  }

  HeaderOption(String name) {
    return Text(
        name,
        style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.white));
  }
}
