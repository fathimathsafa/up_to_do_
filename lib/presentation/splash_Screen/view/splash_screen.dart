import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:up_to_do/core/constants/color_constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorTheme.maincolor,
        appBar: AppBar(
          backgroundColor: ColorTheme.maincolor,
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: size.height * .25,
              ),
              Container(
                height: size.height * .15,
                width: size.width * .35,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/a_logo_for_todo_list_app__1_-removebg-preview 2 (1).png"),
                        fit: BoxFit.contain)),
              ),
              Text(
                "UP TO DO",
                style: GoogleFonts.poppins(
                    color: ColorTheme.mainTextcolor,
                    fontSize: 23,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
