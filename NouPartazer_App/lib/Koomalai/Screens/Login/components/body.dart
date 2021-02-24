import 'dart:convert';

import 'package:NouPartazer_App/Koomalai/Screens/Login/components/background.dart';
import 'package:NouPartazer_App/Koomalai/Screens/Signup/signup_screen.dart';
import 'package:NouPartazer_App/Koomalai/components/rounded_button.dart';
import 'package:NouPartazer_App/Koomalai/components/rounded_input_field.dart';
import 'package:NouPartazer_App/Koomalai/components/rounded_password_field.dart';
import 'package:NouPartazer_App/Koomalai/src/screens/mainScreen.dart';
import 'package:NouPartazer_App/Koomalai/src/screens/secondMainScreen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../login_screen.dart';


class Body extends StatelessWidget {

  /*const Body({
    Key key,
  }) : super(key: key);*/

  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();

  Future login() async {
    var url = "http://192.168.1.101/flutter-login-signup/login.php";
    var response = await http.post(url, body: {
      "username": user.text,
      "password": pass.text,
    });
    var data = json.decode(response.body);
    /*if (data == "Success") {
      FlutterToast(context).showToast(
          child: Text(
            'Login Successful',
            style: TextStyle(fontSize: 25, color: Colors.green),
          ));
      Navigator.push(context, MaterialPageRoute(builder: (context)=>MainScreen(),),);
    } else {
      FlutterToast(context).showToast(
          child: Text('Username and password invalid',
              style: TextStyle(fontSize: 25, color: Colors.red)));
    }*/
  }

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
              "LOGIN",
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

            SizedBox(height: size.height * 0.298),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
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
                          return LoginScreen();
                        },
                      ),
                    );
                 },

                  color: Colors.white,
                  minWidth: size.width * 0.5,
                  height: 50.0,

                ),

                   
                  ]
                ),


                FlatButton(
                  child: Text("Sign Up",
                    style: TextStyle(color: Colors.white, fontFamily: 'risotto', fontSize: 20.0),),

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
                style: TextStyle(color: Colors.amber, fontFamily: 'risotto',fontSize: 45.0,fontWeight: FontWeight.bold),),
            ),

            Container(
              margin: EdgeInsets.only(left: 30.0),
              alignment: Alignment.bottomLeft,
              child: Text("Sign in to continue",
                style: TextStyle(color: Colors.white, fontFamily: 'risotto',fontSize: 22.0),),
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
                  color: Colors.amber,
                  textColor: Colors.white,

                  press: () {

                      Colors.white;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {

                              return MainScreen();

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
            MaterialButton(
              child: Text(
              "Forgot Password?",
              style: TextStyle(color: Colors.white, fontFamily: 'risotto',fontSize: 22.0, decoration: TextDecoration.underline, fontWeight: FontWeight.bold
              ),
            ),

                onPressed: () {
                /*Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) {
                return LoginScreen();
                },
                ),
                );*/
                },



              )


          ],
        ),
      ),
    );
  }
}



