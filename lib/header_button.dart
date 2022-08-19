import 'package:flutter/material.dart';

class HeaderButton extends StatelessWidget {
  final String label;
  final Future onTouch;
  const HeaderButton({Key? key, required this.label, required this.onTouch}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialButton(
      onPressed: () { onTouch; },
      child: Text(label, style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.white
      ),),
    );
  }
}
