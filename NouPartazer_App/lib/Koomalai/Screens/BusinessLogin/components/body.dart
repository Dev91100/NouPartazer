import 'package:NouPartazer_App/Koomalai/Screens/BusinessLogin/components/background.dart';
import 'package:NouPartazer_App/Koomalai/Screens/Signin/signin_screen.dart';
import 'package:NouPartazer_App/Koomalai/Screens/Signup/signup_screen.dart';
import 'package:NouPartazer_App/Koomalai/components/rounded_button.dart';
import 'package:NouPartazer_App/Koomalai/components/rounded_input_field.dart';
import 'package:NouPartazer_App/Koomalai/components/rounded_password_field.dart';
import 'package:NouPartazer_App/Koomalai/src/screens/BusinessNGOmainScreen.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            /*Text(
              "LBusinessMainScreenOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),*/

            /*Image(
              image: AssetImage('assets/images/image.jpg'),
              height: size.height * 0.475,

            ),*/
            /*SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),*/

            /*Align(
              alignment: Alignment.topRight,
              child: FlatButton(
                child: Text("Skip",style: TextStyle(color: Colors.white, fontSize: 20.0),),

                onPressed: () {},
                color:Colors.black26,
                minWidth: size.width * 0.5,
              ),


            ),*/

            /*Align(
              alignment: Alignment.bottomRight,
              child: FlatButton(
                child: Text("Sign Up",style: TextStyle(color: Colors.white, fontSize: 20.0),),

                onPressed: () {},
                color:Colors.black26,
                minWidth: size.width * 0.5,
              ),

            ),*/

            SizedBox(height: size.height * 0.346),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text("Sign In",
                    style: TextStyle(color: Colors.black, fontSize: 20.0),
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
                    style: TextStyle(color: Colors.white,  fontSize: 20.0),),

                  onPressed: () {
                    Colors.white;
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
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),

                  ),

                ),

              ],
            ),

            SizedBox(height: size.height * 0.03),

            Container(
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text("Welcome,",
                style: TextStyle(color: Color.fromRGBO(245, 197, 41, 1), fontSize: 45.0,fontWeight: FontWeight.bold),),
            ),

            Container(
              margin: EdgeInsets.only(left: 30.0),
              alignment: Alignment.bottomLeft,
              child: Text("Sign in to continue",
                style: TextStyle(color: Colors.white, fontSize: 22.0),),
            ),

            RoundedInputField(
              hintText: "Email",
              onChanged: (value) {},
            ),

            RoundedPasswordField(
              onChanged: (value) {},
            ),
            /*RoundedButton(text: "LOGIN",
              press: () {},*/


           /* SizedBox(height: size.height * 0.03),*/

              RoundedButton(
                  text: "Log In",
                  color: Color.fromRGBO(245, 197, 41, 1),
                  textColor: Colors.white,

                  press: () {

                      Colors.white;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return BusinessMainScreen();
                          },
                        ),
                      );
                    }

              ),

            /*AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),*/

            Text(
              "Forgot Password?",
              style: TextStyle(color: Colors.white, fontSize: 22.0, decoration: TextDecoration.underline, fontWeight: FontWeight.bold),

            )



          ],
        ),
      ),
    );
  }
}



