import 'package:flutter/material.dart';
import 'package:personal_website/logo.dart';


class DesktopScreen extends StatelessWidget {
  const DesktopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Row(
          children: [
            Logo(),
            Spacer(),
            ElevatedButton(onPressed: (){}, child: Text("BUJTTON")),
            Text("DESKTOP"),
            ElevatedButton(onPressed: (){}, child: Text("BUTTON 2")),
          ],
        )),
        shadowColor: Colors.transparent,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Center(child: Text("$width")),
        color: Colors.red,
      ),
    );
  }
}
