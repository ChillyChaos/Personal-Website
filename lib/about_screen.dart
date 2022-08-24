import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_website/colours/colours.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            color: myThirdColor,
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                child: Container(
                  height: 90,
                  width: 500,
                  color: myFirstColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(
                        child: Text(
                          "About Me:",
                          style: GoogleFonts.lato(
                              fontSize: 60,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Icon(Icons.person, size: 50,color: Colors.white,)
                    ],
                  ),
                ),
              ),
            ),
          ),
          AboutMeBoxes("Background", "I was born in Baguio, Philippines and moved to Vancouver, "
              "Canada when I was 5. I've lived here ever since then. "
              "I initially was studying for nursing by taking "
              "prerequisites at the Vancouver Community College, but "
              "decided to go into a trade. I attended the British "
              "Institute of Technology Automotive Technician program "
              "and eventually went on to work at Regency Lexus and "
              "Toyota. While i enjoyed solving problems with vehicles,"
              " i found thephysical labour to be too much for my body."
              " This pushed meto switch and pursue a career in tech "
              "instead. I cancontinue solving problems without the "
              "physical pains after a long day. A win-win in by book."),
          AboutMeBoxes("Hobbies", "What do i like doing? Well in my free time "
              "i'm quite the active person. I enjoy training at the gym and "
              "learning new skills specifically in"
            "Calisthenics. Boxing is a passion that i enjoy, as I did everything"
              " just short of an official amateur match. Breakdancing is a hobby"
              " i've enjoyed since high school, and continue to enjoy to this "
              "day. In terms of hobbies related to tech, ever since i learned "
              "how to really code i've been working"
            "on personal projects which i really enjoy learning to create."),
          AboutMeBoxes("My Goal", "Currently, i am looking for a position in the"
              " following areas: Frontend, Backend, Fullstack, Webapp "
              "Development, Devops, QA Testing, Mobile Developmen I enjoy "
              "challenges that force me to think for myself, as i find myself "
              "learning the most from such obstacles. I hope in these positions "
              "to find good mentorship and review, and a chance to contribute "
              "well-written code with good maintainability.")
        ],
      ),
    );
  }
  
  AboutMeBoxes(String title, String bodyText) {
    return Container(
        child: Column(
        children: [
        Text(title, style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500, color: Colors.white),),
    SizedBox(
    height: 150,
    width: 850,
    child: Flexible(
    child: Text(bodyText,
    style: TextStyle(fontSize: 20, color: Colors.white),
    ))),

    ],
    ));
  }
}
