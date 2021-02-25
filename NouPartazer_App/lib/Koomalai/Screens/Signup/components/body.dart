import 'package:NouPartazer_App/Koomalai/Screens/Business/Business.dart';
import 'package:NouPartazer_App/Koomalai/Screens/Login/login_screen.dart';
import 'package:NouPartazer_App/Koomalai/Screens/NGO/NGO.dart';
import 'package:NouPartazer_App/Koomalai/Screens/Signup/components/social_icon.dart';
import 'package:NouPartazer_App/Koomalai/src/screens/secondMainScreen.dart';
import 'package:flutter/material.dart';

import '../signup_screen.dart';
/*import 'NGO/Business.dart';*/

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    Size size = MediaQuery.of(context).size;

    return LayoutBuilder
    (
      builder: (ctx, constraints)
      {
        return Container
        (
          child: SingleChildScrollView
          (
            child: Stack
            (
              children:
              [
                Container
                (
                  height: constraints.maxHeight * 0.47,
                  decoration: BoxDecoration
                  (
                    image: DecorationImage
                    (
                      image: AssetImage('assets/JPEG/image.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Align
                  (
                    alignment: Alignment.bottomCenter,

                    child: Row
                    (
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children:
                      [
                        Column
                        (
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: 
                          [
                            FlatButton
                            (
                              child: FittedBox
                              (
                                fit: BoxFit.contain,
                                child: Text
                                (
                                  "Sign In",
                                  style: TextStyle
                                  (
                                    color: Colors.white,
                                    fontSize: 20.0
                                  ),
                                ),
                              ),
                              shape: RoundedRectangleBorder
                              (
                                borderRadius: BorderRadius.circular(0.0),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return LoginScreen();
                                    },
                                  ),
                                );
                              },
                              color: Colors.black54,
                              minWidth: size.width * 0.5,
                              height: constraints.maxHeight * 0.06,
                            ),
                          ]
                        ),

                        FlatButton(
                          child: FittedBox
                          (
                            fit: BoxFit.contain,
                            child: Text
                            (
                              "Sign Up",
                              style: TextStyle
                              (
                                color: Colors.black,
                                fontSize: 20.0
                              ),
                            ),
                          ),
                          onPressed: ()
                          {
                            Navigator.push
                            (
                              context,
                              MaterialPageRoute
                              (
                                builder: (context)
                                {
                                  return SignUpScreen();
                                },
                              ),
                            );
                          },
                          color: Colors.white,
                          minWidth: size.width * 0.5,
                          height: constraints.maxHeight * 0.06,
                        ),
                      ],
                    ),
                  ),
                ),

                Column
                (
                  children:
                  [
                    Container
                    (
                      margin: EdgeInsets.only
                      (
                        top: constraints.maxHeight * 0.06,
                        right: constraints.maxHeight * 0.03,
                      ),
                      alignment: Alignment.topRight,

                      child: RaisedButton
                      (
                        child: FittedBox
                        (
                          fit: BoxFit.contain,
                          child: Text
                          (
                            "Skip",
                            style: TextStyle
                            (
                              color: Colors.white,
                              fontSize: 20.0
                            ),
                          ),
                        ),
                        onPressed: () 
                        {
                          Navigator.push
                          (
                            context,
                            MaterialPageRoute
                            (
                              builder: (context)
                              {
                                return SecondMainScreen();
                              },
                            ),
                          );
                        },
                        color:Colors.black54,
                        shape: RoundedRectangleBorder
                        (
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),

                    SizedBox
                    (
                      height: constraints.maxHeight * 0.38
                    ),

                    Container
                    (
                      margin: EdgeInsets.only
                      (
                        left: constraints.maxHeight * 0.025
                      ),
                      alignment: Alignment.bottomLeft,
                      child: FittedBox
                      (
                        fit: BoxFit.contain,
                        child: Text
                        (
                          "Let's get started,",
                          style: TextStyle
                          (
                            color: Color.fromRGBO(245, 197, 41, 1),
                            fontSize: 45.0,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),

                    Container
                    (
                      margin: EdgeInsets.only
                      (
                        left: constraints.maxHeight * 0.025,
                        bottom: constraints.maxHeight * 0.02,
                      ),
                      alignment: Alignment.bottomLeft,
                      child: FittedBox
                      (
                        fit: BoxFit.contain,
                        child: Text
                        (
                          "Choose your organisation type",
                          style: TextStyle
                          (
                            color: Colors.white,
                            fontSize: 22.0
                          ),
                        ),
                      ),
                    ),

                    Column
                    (
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                      [  
                        SocalIcon
                        (
                          iconSrc: "assets/SVG/NGO Button.svg",

                          press: ()
                          {
                            Navigator.push
                            (
                              context,
                              MaterialPageRoute
                              (
                                builder: (context)
                                {
                                  return NGO();
                                },
                              ),
                            );
                          },
                        ),

                        SocalIcon
                        (
                          iconSrc: "assets/SVG/Business Button.svg",
                          press: ()
                          {
                            Navigator.push
                            (
                              context,
                              MaterialPageRoute
                              (
                                builder: (context)
                                {
                                  return Business();
                                },
                              ),
                            );
                          },
                        ),
                      ],
                    )
                  ]
                ),
              ]
            ),
          ),
        );
      }
    );
  }
}
