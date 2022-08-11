import 'package:flutter/material.dart';


class DesktopScreen extends StatelessWidget {
  const DesktopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
      child: Center(child: Text("$width")),
      color: Colors.red,
    );
  }
}
