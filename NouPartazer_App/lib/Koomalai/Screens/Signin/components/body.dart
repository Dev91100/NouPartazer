import 'package:NouPartazer_App/Koomalai/Screens/BusinessLogin/login_screen.dart';
import 'package:NouPartazer_App/Koomalai/Screens/Login/login_screen.dart';
import 'package:NouPartazer_App/Koomalai/Screens/Signin/components/background.dart';
import 'package:NouPartazer_App/Koomalai/Screens/Signin/components/social_icon.dart';
import 'package:NouPartazer_App/Koomalai/Screens/Signin/signin_screen.dart';
import 'package:NouPartazer_App/Koomalai/Screens/Signup/signup_screen.dart';
import 'package:flutter/material.dart';

import '../signin_screen.dart';
/*import 'NGO/Business.dart';*/

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            /*Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),*/
            /*SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),*/

            SizedBox(height: size.height * 0.236),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text("Sign In",
                    style: TextStyle(color: Colors.black, fontFamily: 'risotto',fontSize: 20.0),
                  ),

                  /*shape: Border.all(color:Colors.white,width: 1.0),*/
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),

                  ),

                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SignInScreen();
                        },
                      ),
                    );
                  },

                  color: Colors.white,
                  minWidth: size.width * 0.5,
                  height: 50.0,

                ),



                FlatButton(
                  child: Text("Sign Up",
                    style: TextStyle(color: Colors.white, fontFamily: 'risotto', fontSize: 20.0),),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),

                  ),
                  onPressed: () {

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
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

            SizedBox(height: size.height * 0.03),

            Container(
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text("Welcome,",
                style: TextStyle(color: Colors.amber, fontFamily: 'risotto',fontSize: 40.0,fontWeight: FontWeight.bold),),
            ),

            Container(
              margin: EdgeInsets.only(left: 30.0),
              alignment: Alignment.bottomLeft,
              child: Text("Sign in to continue",
                style: TextStyle(color: Colors.white, fontFamily: 'risotto',fontSize: 22.0),),
            ),


           /* RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),*/
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/SVG/NGO.svg",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginScreen();
                        },
                      ),
                    );
                  },
                ),
                SocalIcon(
                  iconSrc: "assets/SVG/Business.svg",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return BusinessLoginScreen();
                        },
                      ),
                    );
                  },
                ),
                /*SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),*/
              ],
            )
          ],
        ),
      ),
    );
  }
}
