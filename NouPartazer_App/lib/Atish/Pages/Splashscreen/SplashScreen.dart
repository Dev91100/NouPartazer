import 'package:flutter/material.dart';
import 'dart:async';

import 'package:noupartazer_app/Koomalai/Pages/SignIn/SignIn.dart';

class Splashscreen extends StatefulWidget
{
  Splashscreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen>
{

  @override
  void initState()
  {
    super.initState();
    Timer
    (
      Duration(seconds: 5),
      () => Navigator.of(context).pushReplacement
      (
        MaterialPageRoute
        (
          builder: (BuildContext context) => SignIn()
        )
      )
    );
  }

  @override
  Widget build(BuildContext context)
  {
    return LayoutBuilder
    (
      builder: (ctx, constraints)
      {
        return Scaffold
        (
          body: Stack
          (
            children: 
            [
              Container
              (
                height: constraints.maxHeight,
                decoration: BoxDecoration
                (
                  image: DecorationImage
                  (
                    image: AssetImage('assets/JPEG/SplashScreen.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Container
              (
                color: Color.fromRGBO(0, 0, 0, 0.3)
              ),

              Container
              (
                margin: EdgeInsets.only
                (
                  top: constraints.maxHeight * 0.2,
                ),
                width: double.infinity,
                child: Column
                (
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:
                  [
                    Image.asset
                    (
                      'assets/PNG/icon.png',
                      height: constraints.maxHeight * 0.2,
                      fit: BoxFit.cover,
                    ),

                    SizedBox
                    (
                      height: constraints.maxHeight * 0.04,
                    ),

                    FittedBox
                    (
                      fit: BoxFit.contain,
                      child: RichText
                      (
                        text: TextSpan
                        (
                          style: TextStyle
                          (
                            fontFamily: 'Comfortaa',
                            fontWeight: FontWeight.bold,
                            fontSize: 45,
                            color:Colors.white,
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
                    ),

                    Container
                    (
                      margin: EdgeInsets.only
                      (
                        top: constraints.maxHeight * 0.1,
                      ),
                      height: constraints.maxHeight * 0.2,
                      width: constraints.maxWidth * 0.6,
                      child: FittedBox
                      (
                        clipBehavior: Clip.none,
                        fit: BoxFit.contain,
                        child: RichText
                          (
                          text: TextSpan
                          (
                            style: TextStyle
                            (
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.normal,
                              height: 1.2,
                              fontSize: 29,
                              color: Colors.white,
                            ),
                            
                            children:
                            [
                              TextSpan
                              (
                                text: '“If you can’t feed \na hundred people,\nthen feed just ',
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
                                text: '.”\n- Mother Teresa',
                              )
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),

                    Container
                    (
                      margin: EdgeInsets.only
                      (
                        top: constraints.maxHeight * 0.05,
                      ),
                      child: CircularProgressIndicator(),
                    )
                  ]
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}