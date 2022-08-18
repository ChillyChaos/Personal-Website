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
      drawer: Drawer(),
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
}
