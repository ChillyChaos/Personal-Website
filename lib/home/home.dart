import 'package:flutter/material.dart';

import '../desktop_screen.dart';
import '../mobile_screen.dart';
import '../widgets/responsive_layout_maker.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomePage createState() => HomePage();
}

class HomePage extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(mobileBody: const MobileScreen(), desktopBody: const DesktopScreen(),),
    );
  }

}



