import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/models/carousel_item_model.dart';
import 'package:personal_website/utils/constants.dart';

List<CarouselItemModel> carouselItems = List.generate(
    5, (index) => CarouselItemModel(
    text: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "BCIT School of Computing Student / Aspiring Web Developer",
            style: TextStyle(),
          ),
          Spacer(),
          Text("Josh Martin"),
          Spacer(),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Container(
              decoration: BoxDecoration(
                color: myPrimaryColor,
                borderRadius: BorderRadius.circular(8.0)
              ),
              height: 50.0,
              padding: EdgeInsets.symmetric(
                horizontal: 28.0
              ),
              child: TextButton(
                onPressed: () {  },
                child: Text(
                    "Contact Me Today!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold
                    ),
                ),
              ),
            ),
          )
        ],
      ),
    ),
    image: Image.asset(
        "assets/person.png",
        fit: BoxFit.contain
    )));