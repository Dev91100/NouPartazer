import 'dart:async';

import 'package:NouPartazer_App/Koomalai/constants.dart';
import 'package:flutter/material.dart';

import 'Koomalai/Screens/Login/login_screen.dart';


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
        context, MaterialPageRoute(builder: (context)=>LoginScreen())));
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: 
        [
          Container
          (
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
            margin: EdgeInsets.fromLTRB(0, 110, 0, 0),
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
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  SizedBox
                  (
                    height: 25,
                  ),
                  RichText
                  (
                    text: TextSpan
                    (
                      style: TextStyle
                      (
                        fontSize: 45,
                        color: Colors.white,
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
                    margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                    height: 200,
                    width: 270,
                    child: RichText
                    (
                      text: TextSpan
                      (
                        style: TextStyle
                        (
                          fontSize: 30,
                          color: Colors.white,
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
                              color: Color.fromRGBO(245,197,41,1),
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



