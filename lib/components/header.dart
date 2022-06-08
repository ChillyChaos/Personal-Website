import 'package:flutter/material.dart';
import 'package:personal_website/utils/constants.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../models/header_item.dart';

List<HeaderItem> headerItems = [
  HeaderItem(title: "HOME", onTap: (){}),
  HeaderItem(title: "ABOUT ME", onTap: (){}),
  HeaderItem(title: "PROJECTS", onTap: (){}),
  HeaderItem(title: "RESUME", onTap: (){}),
  HeaderItem(title: "CONTACT", onTap: (){}, isButton: true),
];

class HeaderRow extends StatelessWidget {
  const HeaderRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveVisibility(
      visible: false,
      visibleWhen:  const [
        Condition.largerThan(name: MOBILE),
      ],
      child: Row(
        children: headerItems.map((item) => item.isButton ? MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Container(
            decoration: BoxDecoration(
              color: myDangerColor,
              borderRadius: BorderRadius.circular(8.0),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5.0),
            child: TextButton(
              onPressed: item.onTap,
              child: Text(
                item.title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
        ) : MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 25.0),
            child: GestureDetector(
              onTap: item.onTap,
              child: Text(
                item.title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        )).toList(),
      ),
    );
  }
}


class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildHeader();
  }

  Widget buildHeader() {
    return Container(
      color: myPrimaryColor,
      child: const Center(child: HeaderRow()),
      padding: const EdgeInsets.only(left: 50.0),
    );
  }
}
