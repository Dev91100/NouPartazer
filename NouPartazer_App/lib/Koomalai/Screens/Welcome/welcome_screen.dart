import 'dart:async';

import 'package:noupartazer_app/Koomalai/Screens/Login/login_screen.dart';
import 'package:flutter/material.dart';


class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.asset("assets/images/Splash Screen 2.jpg",width: 5000.0,),


          SizedBox(height: 30.0,),



          /*Image.asset("assets/images/WanderingCubes.gif", width: 1.0,color: Colors.orangeAccent,),*/

        ],
      ),
    );
  }

}

/*class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }*/



