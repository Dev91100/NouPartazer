import 'package:flutter/material.dart';

import 'package:NouPartazer_App/Koomalai/constants.dart';
import 'Atish/Pages/Splashscreen/SplashScreen.dart';
import 'package:NouPartazer_App/Koomalai/src/NGO profile/NGOProfile.dart';

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
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: SpashScreen(),
    );
  }
}



