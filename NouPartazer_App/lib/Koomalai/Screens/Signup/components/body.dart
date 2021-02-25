import 'package:NouPartazer_App/Koomalai/Screens/Business/Business.dart';
import 'package:NouPartazer_App/Koomalai/Screens/Login/login_screen.dart';
import 'package:NouPartazer_App/Koomalai/Screens/NGO/NGO.dart';
import 'package:NouPartazer_App/Koomalai/Screens/Signup/components/background.dart';
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
              height: 407,
              decoration: BoxDecoration
              (
                image: DecorationImage
                (
                  image: AssetImage('assets/JPEG/image.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Column
            (
              children:
              [
                Container
                (
                  margin: EdgeInsets.only(top: 50,right: 20.0),
                  alignment: Alignment.topRight,

                  child: RaisedButton
                  (
                    child: Text
                    (
                      "Skip",
                      style: TextStyle
                      (
                        color: Colors.white,
                        fontSize: 20.0
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
                    color:Colors.black26,
                    shape: RoundedRectangleBorder
                    (
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),

                SizedBox
                (
                  height: size.height * 0.298
                ),

                Row
                (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                  [
                    FlatButton
                    (
                      child: Text
                      (
                        "Sign In",
                        style: TextStyle
                        (
                          color: Colors.white,
                          fontSize: 20.0
                        ),
                      ),

                      shape: RoundedRectangleBorder
                      (
                        borderRadius: BorderRadius.circular(0.0),
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
                              return LoginScreen();
                            },
                          ),
                        );
                      },

                      color: Colors.black54,
                      minWidth: size.width * 0.5,
                      height: 50.0,
                    ),

                    FlatButton
                    (
                      child: Text
                      (
                        "Sign Up",
                        style: TextStyle
                        (
                          color: Colors.black,
                          fontSize: 20.0
                        ),
                      ),
                      shape: RoundedRectangleBorder
                      (
                        borderRadius: BorderRadius.circular(0.0),
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
                      height: 50.0,
                    ),
                  ],
                ),

                SizedBox
                (
                  height: size.height * 0.03
                ),

                Container
                (
                  margin: EdgeInsets.only(left: 25.0),
                  alignment: Alignment.bottomLeft,
                  child: Text
                  (
                    "Let's get started,",
                    style: TextStyle
                    (
                      color: Color.fromRGBO(245, 197, 41, 1),
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),

                Container
                (
                  margin: EdgeInsets.only(left: 30.0),
                  alignment: Alignment.bottomLeft,
                  child: Text
                  (
                    "Choose your organisational type",
                    style: TextStyle
                    (
                      color: Colors.white,
                      fontSize: 22.0
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
}
