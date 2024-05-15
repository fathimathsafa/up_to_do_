import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:up_to_do/core/constants/color_constants.dart';
import 'package:up_to_do/presentation/home_screen/view/home_screen.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var topPadding = size.height * 0.15; // 5% of the screen height

    return SafeArea(
      child: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Group_184__1_-removebg-preview.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: IntroductionScreen(
          globalBackgroundColor: ColorTheme.maincolor,
          pages: [
            PageViewModel(
              title: "Manage Your Tasks",
              body:
                  "You can easily manage all of your daily task in UPTODO for free",
              image: Padding(
                padding: EdgeInsets.only(top: topPadding), // Add space here
                child: Image.asset(
                  "assets/Group_184__1_-removebg-preview.png",
                  height: size.width - 40,
                  width: size.width - 40,
                ),
              ),
              decoration: PageDecoration(
                titleTextStyle: TextStyle(
                  color: ColorTheme.mainTextcolor,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
                bodyTextStyle: TextStyle(
                  color: ColorTheme.mainTextcolor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            PageViewModel(
              title: "Create Daily Routine",
              body:
                  "In UPTODO you can create your personalized routine to stay productive",
              image: Padding(
                padding: EdgeInsets.only(top: topPadding), // Add space here
                child: Image.asset(
                  "assets/Frame_162-removebg-preview.png",
                  height: size.width - 40,
                  width: size.width - 40,
                ),
              ),
              decoration: PageDecoration(
                titleTextStyle: TextStyle(
                  color: ColorTheme.mainTextcolor,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
                bodyTextStyle: TextStyle(
                  color: ColorTheme.mainTextcolor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            PageViewModel(
              title: "Organize Your Tasks",
              body:
                  "You can organize your daily tasks by adding your tasks into separate categories",
              image: Padding(
                padding: EdgeInsets.only(top: topPadding), // Add space here
                child: Image.asset(
                  "assets/Frame_161-removebg-preview.png",
                  height: size.width - 40,
                  width: size.width - 40,
                ),
              ),
              decoration: PageDecoration(
                titleTextStyle: TextStyle(
                  color: ColorTheme.mainTextcolor,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
                bodyTextStyle: TextStyle(
                  color: ColorTheme.mainTextcolor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
          next: Text(
            "",
            style: TextStyle(
              color: ColorTheme.maincolor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          showSkipButton: true,
          skip: Text(
            "Skip",
            style: TextStyle(color: ColorTheme.mainTextcolor, fontSize: 20),
          ),
          done: Text(
            "Start",
            style: TextStyle(color: ColorTheme.mainTextcolor, fontSize: 20),
          ),
          onDone: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => HomeScreen())),
          onSkip: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => HomeScreen())),
          dotsDecorator: DotsDecorator(
            size: Size(0, 0),
            spacing: EdgeInsets.all(10),
            activeSize: Size(30, 10),
            color: ColorTheme.secondColor,
            activeColor: ColorTheme.mainTextcolor,
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60),
            ),
          ),
        ),
      ),
    );
  }
}
