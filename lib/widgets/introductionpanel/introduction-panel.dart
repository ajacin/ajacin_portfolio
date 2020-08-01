import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class IntroductionPanel extends StatelessWidget {
  const IntroductionPanel({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Center(
              child: Text(
                "{ Hello, I am Arun ;)",
                style: GoogleFonts.robotoMono(
                  textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      letterSpacing: .5),
                ),
              ),
            ),
            Text(
              "I am a User Interface Developer ...",
              style: GoogleFonts.robotoMono(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: .5),
              ),
            ),
            Text(
              "... Contributing to Entropy Since 1989",
              style: GoogleFonts.robotoMono(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    letterSpacing: .5),
              ),
            ),
            SizedBox(
              // width: 500.0,
              child: TypewriterAnimatedTextKit(
                  onTap: () {
                    print("Tap Event");
                  },
                  text: [
                    "I create Websites}",
                    "I create Apps}",
                    "I do take Photographs}",
                    "I do Calligraphy}",
                  ],
                  textStyle: GoogleFonts.robotoMono(
                    textStyle: TextStyle(fontSize: 25.0, color: Colors.black45),
                  ),
                  pause: Duration(milliseconds: 2000),
                  displayFullTextOnTap: true,
                  // textStyle: TextStyle(fontSize: 25.0, fontFamily: "Agne", color: Colors.black26),
                  textAlign: TextAlign.start,
                  alignment:
                      AlignmentDirectional.topStart // or Alignment.topLeft
                  ),
            ),
          ]),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem(this.title);
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 20,
      ),
    );
  }
}
