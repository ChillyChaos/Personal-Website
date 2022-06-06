import 'package:flutter/material.dart';
import 'package:personal_website/pages/home.dart';
import 'package:responsive_framework/responsive_framework.dart';

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
      builder: (context, widget) => ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, widget!),
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(450, name: MOBILE),
            const ResponsiveBreakpoint.resize(450, name: TABLET),
            const ResponsiveBreakpoint.resize(450, name: TABLET),
            const ResponsiveBreakpoint.resize(450, name: DESKTOP)
          ],
      background: Container(
        color: Colors.deepOrange,
      )),
      home: const Home(),
    );
  }
}

