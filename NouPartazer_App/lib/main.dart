import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:noupartazer_app/Pages/Splashscreen/CustomSplashscreen.dart';

ThemeData lightTheme() {

  final ThemeData base = ThemeData.light();
  return base.copyWith(
      //textTheme: Typography().white,
      primaryColor: Color(0xffce107c),
      //primaryColor: Color(0xff4829b2),
      indicatorColor: Color(0xFF807A6B),
      scaffoldBackgroundColor: Color(0xFFF5F5F5),
      accentColor: Color(0xFFFFF8E1),
      iconTheme: IconThemeData(
        color: Colors.white,
        size: 20.0,
      ),
      buttonColor: Colors.white,
      backgroundColor: Colors.white,
      tabBarTheme: base.tabBarTheme.copyWith(
        labelColor: Color(0xffce107c),
        unselectedLabelColor: Colors.grey,
      ));
}
void main() => runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    Color primary1   = Color.fromRGBO(0, 50, 193, 1);
    Color secondary1 = Color.fromRGBO(245, 197, 41, 1);

    return ColorFiltered
    (
      colorFilter: ColorFilter.mode(Colors.yellow.shade100, BlendMode.multiply), //Eye care mode
      // colorFilter: ColorFilter.mode(Colors.transparent, BlendMode.color), //No eye care mode
      child: MaterialApp
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
      ),
    );
  }
}




