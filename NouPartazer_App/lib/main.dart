import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

import 'package:noupartazer_app/Atish/Pages/Splashscreen/Splashscreen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    // Primary Colors
    Color primary1 = Color.fromRGBO(0, 50, 193, 1);
    Color primary2 = Color.fromRGBO(41, 90, 242, 1);
    Color primary3 = Color.fromRGBO(116, 135, 255, 1);

    // Secondary Colors
    Color secondary1 = Color.fromRGBO(245, 197, 41, 1);
    Color secondary2 = Color.fromRGBO(255, 248, 97, 1);
    Color secondary3 = Color.fromRGBO(255, 248, 97, 0.2);

    return MaterialApp
    (
      debugShowCheckedModeBanner: false,
      title: 'NouPartazer',
      theme: ThemeData
      (
        brightness: Brightness.light,
        primaryColor: primary1,
        accentColor: secondary1,
        scaffoldBackgroundColor: Colors.white,

        textTheme: TextTheme
        (
          headline1: GoogleFonts.comfortaa
          (
            textStyle: TextStyle
            (
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: new Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
        )
      ),
      home: AnimatedSplashScreen
      (
        splash: 'assets/PNG/icon.png', 
        animationDuration: Duration(seconds: 3),
        nextScreen: Splashscreen(),
        centered: true,
        // duration: 2,
        pageTransitionType: PageTransitionType.bottomToTop,        
      ),
    );
  }
}




