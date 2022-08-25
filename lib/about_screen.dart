import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_website/colours/colours.dart';
import 'package:personal_website/widgets/title_box.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const TitleBox(title: "About Me", myIcon: Icons.person),
        AboutMeBoxes(
            "Background",
            "I was born in Baguio, Philippines then"
                " moved to Vancouver, Canada when I was 5."
                "Initially I was taking prerequisites for nursing at the "
                "VCC, but instead decided to go into "
                "the automotive repair trade. I attended the BCIT Automotive "
                "Technician program "
                "and eventually went on to work at Regency Lexus and "
                "Toyota. While i enjoyed physically solving problems with "
                "vehicles, I found the physical labour to take a hard toll on my "
                "body. This made me reconsider my career path which eventually"
                " pushed me to switch paths and pursue a career in tech. In "
                "software development, I can "
                "continue receiving satisfaction from solving problems without the "
                "physical aches and pains after a long day. A win-win in by book."),
        AboutMeBoxes(
            "Hobbies",
            "What do I like doing in my free time? "
                "Well in my free time I'm quite the active person. "
                "I enjoy physical training at the gym and learning new skills, "
                "specifically in Calisthenics. Boxing is also a hobby that I "
                "enjoy, as I did everything just short of an official amateur "
                "match. Breakdancing is another hobby I've enjoyed since high"
                " school and continue to enjoy to this day. In terms of "
                "tech-related hobbies, I enjoy creating small projects in my "
                "free time. I also love gadgets and computers, especially trying"
                "to get AAA production games to run on budget PC builds."
                "I also enjoy video games, just like most other tech enthusiasts"),
        AboutMeBoxes(
            "My Goal",
            "Currently, I am looking for a position in the"
                " following areas: Frontend, Backend, Fullstack, Webapp "
                "Development, Devops, QA Testing, Mobile Development. I enjoy "
                "challenges that force me to think for myself, as I find myself "
                "learning the most from such obstacles. I hope in these positions "
                "to find good mentorship and review, and a chance to contribute "
                "well-written code with good maintainability.")
      ],
    );
  }

  AboutMeBoxes(String title, String bodyText) {
    return Container(
        child: Column(
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 40, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        SizedBox(
            height: 200,
            width: 900,
            child: Text(
              bodyText,
              style: TextStyle(fontSize: 20, color: Colors.white),
            )),
      ],
    ));
  }
}
