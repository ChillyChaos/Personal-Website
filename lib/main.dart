import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_website/home/home.dart';
import 'package:personal_website/screens/home.dart';
import 'package:personal_website/colours/colours.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Portfolio Website",
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: Theme.of(context).copyWith(
        scaffoldBackgroundColor: myFirstColor,
        primaryColor: myFirstColor,
        canvasColor: myBackgroundColor,
        textTheme: GoogleFonts.robotoCondensedTextTheme()
      ),
      home: Home(),
    );
  }
}

