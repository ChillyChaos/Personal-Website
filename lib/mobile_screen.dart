import 'package:flutter/material.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Josh Martinez"),
        shadowColor: Colors.transparent,
        backgroundColor: Colors.red,
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildHeader(),
              buildMenuItems()
            ],
          )
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Spacer(),
            Text("TESTER TESTER"),
            Spacer(),
            Center(child: Text("$width")),
            Spacer()
          ],
        ),
        color: Colors.blue,
      ),
    );
  }

  buildHeader() {}

  Widget buildMenuItems() => Column(
    children: [
      ListTile(
        leading: Icon(Icons.home),
        title: Text("Home"),
        onTap: () {},
      ),
      ListTile(
        leading: Icon(Icons.home),
        title: Text("Home"),
        onTap: () {},
      ),
      ListTile(
        leading: Icon(Icons.home),
        title: Text("Home"),
        onTap: () {},
      ),
      ListTile(
        leading: Icon(Icons.home),
        title: Text("Home"),
        onTap: () {},
      ),
    ],
  );
}
