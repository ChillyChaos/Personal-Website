import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/utils/screen_helper.dart';

class Carousel extends StatelessWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double carouselContainerHeight = MediaQuery.of(context).size.height * (ScreenHelper.isMobile(context) ? .7 : .85);

    return Container(
      height: carouselContainerHeight,
      color: Colors.yellow,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 300,
            height: 300,
            child: Center(child: Text("TEst")),
            color: Colors.white,
          ),
          Container(
            child: Text("TESTER"),
          )
          // Container(
          //   alignment: Alignment.center,
          //   child: CarouselSlider(
          //     carouselController: carouselController,
          //     options: CarouselOptions(
          //       viewportFraction: 1,
          //       scrollPhysics: NeverScrollableScrollPhysics(),
          //       height: carouselContainerHeight
          //     ),
          //     items: List.generate(5, (index) => Builder(
          //         builder: (BuildContext, context) {
          //           return Container(
          //           );
          //         })),
          //
          //   ),
          // )
        ],
      ),
    );
  }
}
