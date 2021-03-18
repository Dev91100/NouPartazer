import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/components/LargeButtonIconText.dart';
import 'package:noupartazer_app/Devashish/pages/ForgotPassword.dart';
import 'package:noupartazer_app/Koomalai/Pages/RegistrationPage/BusinessRegistration.dart';
import 'package:noupartazer_app/Koomalai/Pages/RegistrationPage/NGORegistration.dart';
import 'package:noupartazer_app/Koomalai/components/rounded_button.dart';
import 'package:noupartazer_app/Koomalai/components/rounded_input_field.dart';
import 'package:noupartazer_app/Koomalai/components/rounded_password_field.dart';
import 'package:noupartazer_app/Koomalai/src/screens/mainScreen.dart';

class UserAccessModel extends StatefulWidget
{
  @override
  _UserAccessModelState createState() => _UserAccessModelState();
}

class _UserAccessModelState extends State<UserAccessModel>
{
  Color selectedTextColor = Colors.black;
  Color selectedButtonColor = Colors.white;

  Color unselectedTextColor = Colors.white;
  Color unselectedButtonColor = Color.fromRGBO(0, 0, 0, 0.6);

  bool isSignIn = true;
  bool isSignUp = false;

  chooseButton()
  {
    setState(() {
      if(!isSignIn)
      {
        isSignIn = true;
        isSignUp = false;
      }
      else
      {
        isSignUp = true;
        isSignIn = false;
      }
    });
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
                    
                    child: Column
                    (
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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

                          child: LargeButtonIconText
                          (
                            text: 'Skip',
                            textColor: Colors.white,
                            buttonColor: Color.fromRGBO(0, 0, 0, 0.6),
                            hasIcon: false,
                            elevation: 0,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),

                        Align
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
                                      backgroundColor: (isSignIn) ? selectedButtonColor : unselectedButtonColor,
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
                                          color: (isSignIn) ? selectedTextColor : unselectedTextColor,
                                          fontSize: 20.0
                                        ),
                                      ),
                                    ),

                                    onPressed: ()
                                    {
                                      if(!isSignIn)
                                      {
                                        chooseButton();
                                      }
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
                                      backgroundColor: (isSignUp) ? selectedButtonColor : unselectedButtonColor,
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
                                        "Sign Up",
                                        style: TextStyle
                                        (
                                          color: (isSignUp) ? selectedTextColor : unselectedTextColor,
                                          fontSize: 20.0
                                        ),
                                      ),
                                    ),

                                    onPressed: ()
                                    {
                                      if(!isSignUp)
                                      {
                                        chooseButton();
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
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
                    child: (isSignIn) ? SignInWidget() : SignUpWidget(),
                  )
                ],
              ),
            ),
          );
        }
      ),
    );
  }  
}

class SignInWidget extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Column
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
    );
  }
}

class SignUpWidget extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return LayoutBuilder
    (
      builder: (ctx, constraints)
      {
        return Column
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
                bottom: constraints.maxHeight * 0.01,
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

            SizedBox
            (
              height: 10,
            ),
            
            Column
            (
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              [
                Container
                (
                  height: constraints.maxHeight * 0.15,
                  width: constraints.maxWidth * 0.8,

                  constraints: BoxConstraints
                  (
                    minWidth: 300,
                    minHeight: 110
                  ),

                  child: Container
                  (
                    decoration: BoxDecoration
                    (
                      boxShadow:
                      [
                        BoxShadow
                        (
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    
                    child: TextButton
                    (
                      style: TextButton.styleFrom
                      (
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder
                        (
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      
                      child: FittedBox
                      (
                        fit: BoxFit.contain,
                        child: Column
                        (
                          children: 
                          [
                            Icon
                            (
                              Icons.favorite,
                              color: Color.fromRGBO(0, 50, 193, 1),
                              size: 55
                            ),
                            Text
                            (
                              'NGO',
                              style: TextStyle
                              (
                                color: Color.fromRGBO(0, 50, 193, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 30
                              ),
                            ),
                          ],
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
                              return NGORegistration();
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ),

                SizedBox
                (
                  height: constraints.maxHeight * 0.025,
                ),

                Container
                (
                  height: constraints.maxHeight * 0.15,
                  width: constraints.maxWidth * 0.8,

                  constraints: BoxConstraints
                  (
                    minWidth: 300,
                    minHeight: 110
                  ),
                  child: Container
                  (
                    decoration: BoxDecoration
                    (
                      boxShadow:
                      [
                        BoxShadow
                        (
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    
                    child: TextButton
                    (
                      style: TextButton.styleFrom
                      (
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder
                        (
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      
                      child: FittedBox
                      (
                        fit: BoxFit.contain,
                        child: Column
                        (
                          children: 
                          [
                            Icon
                            (
                              Icons.business,
                              color: Color.fromRGBO(0, 50, 193, 1),
                              size: 55
                            ),
                            Text
                            (
                              'BUSINESS',
                              style: TextStyle
                              (
                                color: Color.fromRGBO(0, 50, 193, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 30
                              ),
                            ),
                          ],
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
                              return BusinessRegistration();
                            },
                          ),
                        );
                      },
                    ),
                  )                      
                ),

                SizedBox
                (
                  height: constraints.maxHeight * 0.025,
                ),
              ],
            )
          ],
        );
      }
    );
  }
}
