import 'dart:convert';

import 'package:noupartazer_app/Devashish/pages/ForgotPassword.dart';
import 'package:noupartazer_app/Koomalai/Pages/SignUp/SignUp.dart';
import 'package:noupartazer_app/Koomalai/components/rounded_button.dart';
import 'package:noupartazer_app/Koomalai/components/rounded_input_field.dart';
import 'package:noupartazer_app/Koomalai/components/rounded_password_field.dart';
import 'package:noupartazer_app/Koomalai/src/screens/mainScreen.dart';
import 'package:noupartazer_app/Koomalai/src/screens/secondMainScreen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SignIn extends StatelessWidget
{
  final TextEditingController user = TextEditingController();
  final TextEditingController pass = TextEditingController();

  Future login() async
  {
    var url = "http://192.168.1.101/flutter-login-signup/login.php";
    var response = await http.post
    (
      url, body:
      {
        "username": user.text,
        "password": pass.text,
      }
    );
    var data = json.decode(response.body);
  }

  @override
  Widget build(BuildContext context)
  {
    var screen = MediaQuery.of(context).size;
    
    return Scaffold
    (
      backgroundColor: Color.fromRGBO(41, 90, 245, 1),
      body: LayoutBuilder
      (
        builder: (ctx, constraints)
        {
          return Container
          (
            child: SingleChildScrollView
            (
              child: Column
              (
                children:
                [
                  Stack
                  (  
                    children:
                    [
                      Container
                      (
                        height: constraints.maxHeight * 0.495,
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

                          child: Container
                          (
                            height: constraints.maxHeight * 0.08,
                            // constraints to prevent resizing buttons when keyboard is up
                            constraints: BoxConstraints
                            (
                              minHeight: 60,
                              maxHeight: 60,
                            ),
                            child: Row
                            (
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children:
                              [
                                Container
                                (
                                  width: screen.width * 0.5,
                                  child: TextButton
                                  (
                                    style: TextButton.styleFrom
                                    (
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder
                                      (
                                        borderRadius: BorderRadius.circular(0.0),
                                      ),
                                    ),
                                    child: FittedBox
                                    (
                                      fit: BoxFit.contain,
                                      child: Text
                                      (
                                        "Sign In",
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
                                            return SignIn();
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                ),

                                Container
                                (
                                  width: screen.width * 0.5,

                                  child: TextButton
                                  (
                                    style: TextButton.styleFrom
                                    (
                                      backgroundColor: Color.fromRGBO(0, 0, 0, 0.6),                     
                                    ),
                                    child: FittedBox
                                    (
                                      fit: BoxFit.contain,
                                      child: Text
                                      (
                                        "Sign Up",
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
                                            return SignUp();
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
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

                            child: ElevatedButton
                            (
                              style: ElevatedButton.styleFrom
                              (
                                primary: Color.fromRGBO(0, 0, 0, 0.6),
                                shape: RoundedRectangleBorder
                                (
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
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
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  Container
                  (
                    margin: EdgeInsets.only
                    (
                      top: constraints.maxHeight * 0.025,
                      left: constraints.maxHeight * 0.025,
                      right: constraints.maxHeight * 0.025,
                      bottom: constraints.maxHeight * 0.025,
                    ),
                    child: Column
                    (
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:
                      [
                        Container
                        (
                          alignment: Alignment.bottomLeft,
                          child: FittedBox
                          (
                            fit: BoxFit.contain,
                            child: Text
                            (
                              "Welcome,",
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
                          alignment: Alignment.bottomLeft,
                          child: FittedBox
                          (
                            fit: BoxFit.contain,
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
                        ),

                        SizedBox
                        (
                          height: 10,
                        ),

                        RoundedInputField
                        (
                          hintText: "Email",
                          onChanged: (value) {},
                        ),

                        RoundedPasswordField(
                          onChanged: (value) {},
                        ),

                        RoundedButton
                        (
                          text: "Log In",
                          color: Color.fromRGBO(245, 197, 41, 1),
                          textColor: Colors.white,

                          press: () {
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

                        MaterialButton
                        (
                          child: FittedBox
                          (
                            fit: BoxFit.contain,
                            child: Text
                            (
                              "Forgot Password?",
                              style: TextStyle
                              (
                                color: Colors.white,
                                fontSize: 22.0,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold
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
                                  return ForgotPassword ();
                                },
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}
