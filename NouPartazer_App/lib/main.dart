import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:noupartazer_app/Pages/Splashscreen/CustomSplashscreen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    Color primary1   = Color.fromRGBO(0, 50, 193, 1);
    Color secondary1 = Color.fromRGBO(245, 197, 41, 1);

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
      ),
      
      home: CustomSplashscreen(),
    );
  }
}




