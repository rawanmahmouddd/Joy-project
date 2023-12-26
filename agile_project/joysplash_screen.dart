import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:untitled/agile_project/joysignup_screen.dart';
import 'package:untitled/agile_project/joystart.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
        splashIconSize: 800,
        backgroundColor: Colors.white,
        splash:Container(
          margin: EdgeInsets.only(top:200),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/lo.jpeg",
              fit:BoxFit.fill,
              ),
            ],
          ),
        ),
        nextScreen: StartScreen(),
        splashTransition: SplashTransition.fadeTransition,
        duration: 3000,
      ),
    );
  }
}
