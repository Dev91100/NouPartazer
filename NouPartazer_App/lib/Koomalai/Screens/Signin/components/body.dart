import 'package:noupartazer_app/Koomalai/Screens/BusinessLogin/login_screen.dart';
import 'package:noupartazer_app/Koomalai/Screens/Login/login_screen.dart';
import 'package:noupartazer_app/Koomalai/Screens/Signin/components/background.dart';
import 'package:noupartazer_app/Koomalai/Screens/Signin/components/social_icon.dart';
import 'package:noupartazer_app/Koomalai/Screens/Signin/signin_screen.dart';
import 'package:noupartazer_app/Koomalai/Screens/Signup/signup_screen.dart';
import 'package:flutter/material.dart';

import '../signin_screen.dart';
/*import 'NGO/Business.dart';*/

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) 
  {
    Size size = MediaQuery.of(context).size;

    return Background
    (
      child: SingleChildScrollView
      (
        child: Column
        (
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: 
          [
            SizedBox
            (
              height: size.height * 0.236
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
                      color: Colors.black,fontSize: 20.0
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
                          return SignInScreen();
                        },
                      ),
                    );
                  },

                  color: Colors.white,
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
                          return SignUpScreen();
                        },
                      ),
                    );
                  },
                  color: Colors.black54,
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
                "Welcome,",
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
                "Sign in to continue",
                style: TextStyle
                (
                  color: Colors.white,
                  fontSize: 22.0
                ),
              ),
            ),

            Row
            (
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocalIcon(
                  iconSrc: "assets/SVG/NGO.svg",
                  press: () 
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
                ),

                SocalIcon
                (
                  iconSrc: "assets/SVG/Business.svg",
                  press: ()
                  {
                    Navigator.push
                    (
                      context,
                      MaterialPageRoute
                      (
                        builder: (context)
                        {
                          return BusinessLoginScreen();
                        },
                      ),
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
