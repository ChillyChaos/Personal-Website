
import 'package:flutter/material.dart';
import 'package:personal_website/colours/colours.dart';
import 'package:personal_website/projects_screen.dart';
import 'package:personal_website/url_launcher.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'about_screen.dart';
import 'contact_screen.dart';
import 'home_screen.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

    Scaffold(
      key: _scaffoldKey,);

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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Josh Martinez"),
            Icon(Icons.computer),
          ],
        ),
        backgroundColor: myFirstColor,
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildHeader(),
        Container(
          padding: EdgeInsets.all(24),
          child: Wrap(
            runSpacing: 20,
            children: [
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {
                  scrollToHome();
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("About"),
                onTap: () {
                  scrollToAbout();
                },
              ),
              ListTile(
                leading: Icon(Icons.gradient),
                title: Text("Projects"),
                onTap: () {
                  scrollToProjects();
                },
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text("Contact"),
                onTap: () {
                  scrollToContact();
                },
              ),
              ListTile(
                tileColor: Colors.blue,
                leading: Icon(Icons.document_scanner),
                title: Text("Resume"),
                onTap: () {
                  const url = "https://drive.google.com/file/d/1mSXPUxhDqKOdrbyQESfGXZ6fbpFYkVfa/view?usp=sharing";
                  launchLink(url);
                },
              ),
            ],
          ),
        )
          ],
        ),
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
        )
    );
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

  Widget buildHeader() => Container(
    padding: EdgeInsets.only(
      top: 50
    ),
  );

}
