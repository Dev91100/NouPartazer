import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:async';

import 'package:noupartazer_app/Atish/Pages/UserAccess/UserAccessPanel.dart';
import 'package:connectivity/connectivity.dart';

class CustomSplashscreen extends StatefulWidget
{
  CustomSplashscreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CustomSplashscreenState createState() => _CustomSplashscreenState();
}

class _CustomSplashscreenState extends State<CustomSplashscreen>
{

  @override
  void initState()
  {
    super.initState();

if (_checkInternetConnectivity().toString() == 'true')
{
  Navigator.of(context).pushReplacement
  (
    MaterialPageRoute
    (
      builder: (BuildContext context) => UserAccessPanel()
    )
  );
}
else
{
  Fluttertoast.showToast
  (
    msg: "No internet Connectivity",
    toastLength: Toast.LENGTH_SHORT,
  );
}

    // Timer
    // (
    //   Duration(seconds: 5),
      
      // () => Navigator.of(context).pushReplacement
      // (
      //   MaterialPageRoute
      //   (
      //     builder: (BuildContext context) => UserAccessPanel()
      //   )
      // )
    // );
  }

  Future<bool> _checkInternetConnectivity() async
  {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      return Future<bool>.value(true);
      // I am connected to a mobile network.
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return Future<bool>.value(true);
      // I am connected to a wifi network.
    }
    else
    {
      return Future<bool>.value(false);
    }
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