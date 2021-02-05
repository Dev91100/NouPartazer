import 'dart:async';

import 'package:flutter/material.dart';
import 'package:NouPartazer_App/Koomalai/Screens/Welcome/welcome_screen.dart';
import 'package:NouPartazer_App/Koomalai/constants.dart';

import 'package:NouPartazer_App/Koomalai/splashscreen.dart';
import 'package:NouPartazer_App/Koomalai/src/pages/homePage.dart';
import 'package:NouPartazer_App/Koomalai/src/screens/mainScreen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'Koomalai/Screens/Login/login_screen.dart';
import 'Koomalai/Screens/Signin/signin_screen.dart';


void main() => runApp( MyApp());
/*void main() => runApp(SplashScreenPage());*/


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
     home: MyHomePage(title: 'Flutter Demo Home Page'),


    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), ()=>Navigator.push(
        context, MaterialPageRoute(builder: (context)=>SignInScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            /*margin: EdgeInsets.only(top: 0.0),*/
            child:Image(
              image: AssetImage('assets/JPEG/Splash Screen 2.jpg'),
              height: 700.0,
            ),
          ),


          SpinKitSquareCircle(color:Colors.orangeAccent,size: 25.0,),

          /*Image.asset("assets/images/WanderingCubes.gif", width: 1.0,color: Colors.orangeAccent,),*/

        ],
      ),
    );
  }

}



