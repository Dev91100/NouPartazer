import 'package:NouPartazer_App/Koomalai/src/screens/secondMainScreen.dart';
import 'package:flutter/material.dart';
import 'package:NouPartazer_App/Koomalai/Screens/Business/Business.dart';
import 'package:NouPartazer_App/Koomalai/Screens/Login/login_screen.dart';
import 'package:NouPartazer_App/Koomalai/Screens/NGO/NGO.dart';
import 'package:NouPartazer_App/Koomalai/Screens/Signin/signin_screen.dart';
import 'package:NouPartazer_App/Koomalai/Screens/Signup/components/background.dart';
import 'package:NouPartazer_App/Koomalai/Screens/Signup/components/or_divider.dart';
import 'package:NouPartazer_App/Koomalai/Screens/Signup/components/social_icon.dart';
import 'package:NouPartazer_App/Koomalai/components/already_have_an_account_acheck.dart';
import 'package:NouPartazer_App/Koomalai/components/rounded_button.dart';
import 'package:NouPartazer_App/Koomalai/components/rounded_input_field.dart';
import 'package:NouPartazer_App/Koomalai/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';

import '../signup_screen.dart';
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
            Container(
              margin: EdgeInsets.only(top: 10.0,right: 20.0),
              alignment: Alignment.topRight,

              child: RaisedButton(
                child: Text("Skip",style: TextStyle(color: Colors.white, fontSize: 20.0),),

                onPressed: () {

                  Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {

                      return SecondMainScreen();

                    },
                  ),
                );
                },
                color:Colors.black26,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),


            SizedBox(height: size.height * 0.295),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text("Sign In",
                    style: TextStyle(color: Colors.white, fontFamily: 'risotto',fontSize: 20.0),
                  ),

                  shape: RoundedRectangleBorder(
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
                  height: 50.0,

                ),



                FlatButton(
                  child: Text("Sign Up",
                    style: TextStyle(color: Colors.black, fontFamily: 'risotto', fontSize: 20.0),),
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
                  color: Colors.white,
                  minWidth: size.width * 0.5,
                  height: 50.0,


                ),

              ],
            ),

            SizedBox(height: size.height * 0.03),

            Container(
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text("Let's get started,",
                style: TextStyle(color: Colors.amber, fontFamily: 'risotto',fontSize: 40.0,fontWeight: FontWeight.bold),),
            ),

            Container(
              margin: EdgeInsets.only(left: 30.0),
              alignment: Alignment.bottomLeft,
              child: Text("Choose your organisational type",
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                /*SizedBox(height: size.height * 0.03),
                RaisedButton.icon(
                  icon: Icon(Icons.favorite,color: Colors.blueAccent[700],size: 50.0,),

                  label: Text("NGO",style: TextStyle(color: Colors.blueAccent[700], fontSize: 50.0

                  ),
                  ),


                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {

                            return NGO();

                          },
                        ),
                      );
                  },

                  color:Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    /*side: BorderSide(width: 2.0),*/
                  ),


                ),*/
             SocalIcon(
                  iconSrc: "assets/SVG/NGO Button.svg",

                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return NGO();
                        },
                      ),
                    );
                  },
                ),
                SocalIcon(

                  iconSrc: "assets/SVG/Business Button.svg",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Business();
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
          ]
        ),


      ),
      );

  }
}
