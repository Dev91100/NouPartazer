import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

import 'Koomalai/Screens/Login/login_screen.dart';

class SpashScreen extends StatefulWidget {
  SpashScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SpashScreenState createState() => _SpashScreenState();
}

class _SpashScreenState extends State<SpashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 300000), ()=>Navigator.push(
        context, MaterialPageRoute(builder: (context)=>LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: 
        [
          Container
          (
            height: screen.height,
            decoration: BoxDecoration
            (
              image: DecorationImage
              (
                image: AssetImage('assets/JPEG/SplashScreen.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            // SpinKitSquareCircle(color:Colors.orangeAccent,size: 25.0,),
          ),
          Container
          (
            color: Color.fromRGBO(0, 0, 0, 0.3)
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 200, 0, 0),
            width: double.infinity,
            child: Column
            (
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:
              [
                Image.asset
                (
                  'assets/PNG/NouPartazer LogoOnly_Large.png',
                  height: screen.height * 0.2,
                  fit: BoxFit.cover,
                ),
                SizedBox
                (
                  height: screen.height * 0.04,
                ),
                RichText
                (
                  text: TextSpan
                  (
                    style: GoogleFonts.comfortaa
                    (
                      textStyle: TextStyle
                      (
                        fontWeight: FontWeight.bold,
                        fontSize: 45,
                        color: Colors.white,
                      ),
                    ),
                    children:
                    [
                      TextSpan
                      (
                        text: 'nou',
                        style: TextStyle
                        (
                          color: Color.fromRGBO(245, 197, 41, 1)
                        ),
                      ),
                      TextSpan
                      (
                        text: 'partazer'
                      ),
                    ]
                  )
                ),
                Container
                (
                  margin: EdgeInsets.fromLTRB(0, 110, 0, 0),
                  height: screen.height * 0.23,
                  width: screen.width * 0.7,
                  child: RichText
                  (
                    text: TextSpan
                    (
                      style: GoogleFonts.comfortaa
                      (
                        textStyle: TextStyle
                        (
                          height: 1.2,
                          fontSize: 29,
                          color: Colors.white,
                        ),
                        ),
                      children:
                      [
                        TextSpan
                        (
                          text: '“If you can’t feed a hundred people, then feed just ',
                        ),
                        TextSpan
                        (
                          text: 'one',
                          style: TextStyle
                          (
                            color: Color.fromRGBO(245, 197, 41, 1),
                            fontWeight: FontWeight.bold,
                          )
                        ),
                        TextSpan
                        (
                          text: '.” - Mother Teresa',
                        )
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container
                (
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child:
                    CircularProgressIndicator(),
                )
              ]
            ),
          ),
        ],
      ),
    );
  }
}