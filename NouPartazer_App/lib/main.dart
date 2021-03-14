import 'package:NouPartazer_App/Koomalai/src/NGO%20profile/NGOProfile.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:NouPartazer_App/Atish/Pages/Splashscreen/SplashScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override
  
  Widget build(BuildContext context)
  {
    return MaterialApp
    (
      debugShowCheckedModeBanner: false,
      title: 'NouPartazer',
      theme: ThemeData
      (
        brightness: Brightness.light,
        primaryColor: Color.fromRGBO(0, 50, 193, 1),
        accentColor: Color.fromRGBO(245, 197, 41, 1),
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
      home: NGOProfile(),
    );
  }
}



