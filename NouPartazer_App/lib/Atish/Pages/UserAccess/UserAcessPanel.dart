import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/components/CustomTextField.dart';
import 'package:noupartazer_app/Atish/components/Buttons/LargeButtonIconText.dart';
import 'package:noupartazer_app/Devashish/pages/ForgotPassword.dart';
import 'package:noupartazer_app/Koomalai/Pages/RegistrationPage/BusinessRegistration.dart';
import 'package:noupartazer_app/Koomalai/Pages/RegistrationPage/NGORegistration.dart';
import 'package:noupartazer_app/Koomalai/Pages/BottomNavigation/NGOBottomNav.dart';
import 'package:noupartazer_app/Atish/Pages/UserAccess/components/OrgButton.dart';
import 'package:noupartazer_app/Koomalai/Pages/BottomNavigation/IndividualBottomNav.dart';

class UserAcessPanel extends StatefulWidget
{
  @override
  _UserAcessPanelState createState() => _UserAcessPanelState();
}

class _UserAcessPanelState extends State<UserAcessPanel>
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
        isSignIn = false;
        isSignUp = true;
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
                        image: AssetImage('assets/JPEG/Child.jpg'),
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
                            top: MediaQuery.of(context).padding.top + 15,
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
                            isPageTransition: true,
                            onPress: IndividualBottomNav(),
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
                                  child: LargeButtonIconText
                                  (
                                    text: 'Sign In',
                                    fontSize: 20,
                                    textColor: (isSignIn) ? selectedTextColor : unselectedTextColor,
                                    hasIcon: false,
                                    elevation: 0,
                                    borderRadius: BorderRadius.circular(0.0),
                                    buttonColor: (isSignIn) ? selectedButtonColor : unselectedButtonColor,
                                    hasSuperPress: true,
                                    onSuperPress: (!isSignIn) ? chooseButton : null,
                                  ),
                                ),

                                Container
                                (
                                  width: screen.width * 0.5,
                                  child: LargeButtonIconText
                                  (
                                    text: 'Sign Up',
                                    fontSize: 20,
                                    textColor: (isSignUp) ? selectedTextColor : unselectedTextColor,
                                    hasIcon: false,
                                    elevation: 0,
                                    borderRadius: BorderRadius.circular(0.0),
                                    buttonColor: (isSignUp) ? selectedButtonColor : unselectedButtonColor,
                                    hasSuperPress: true,
                                    onSuperPress: (!isSignUp) ? chooseButton : null,
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
                    child: (isSignIn) ? SignInWidget().buildWidget(context, constraints) : 
                    SignUpWidget().buildWidget(context, constraints),
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

class SignInWidget
{
  Widget buildWidget(BuildContext context, BoxConstraints constraints)
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

        CustomTextField
        (
          labelText: 'Email',
          labelSize: 20,
          iconSize: 25,
          labelColor: Colors.white,
          suffixIcon: Icons.email_outlined,
          iconColor: Colors.white,
          hasBorder: true,
          fillColor: Colors.transparent,
          borderColor: Colors.white,
          borderWidth: 2,
        ),

        CustomTextField
        (
          labelText: 'Password',
          labelSize: 20,
          iconSize: 25,
          labelColor: Colors.white,
          suffixIcon: Icons.https_outlined,
          iconColor: Colors.white,
          hasBorder: true,
          fillColor: Colors.transparent,
          borderColor: Colors.white,
          borderWidth: 2,
        ),

        Container
        (
          margin: EdgeInsets.only(top: constraints.maxHeight * 0.02),
          padding: EdgeInsets.only
          (
            left: 15,
            right: 15,
          ),
          width: constraints.maxWidth,
          child: LargeButtonIconText
          (
            text: "Log In",
            textColor: Colors.white,
            buttonColor: Color.fromRGBO(245, 197, 41, 1),
            hasIcon: false,
            elevation: 0,
            isPageTransition: true,
            onPress: NGOBottomNav(),
          ),
        ),

        Container
        (
          margin: EdgeInsets.only(top: constraints.maxHeight * 0.0025),
          child: MaterialButton
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
          ),
        )
      ],
    );
  }
}

class SignUpWidget
{
  Column buildWidget(BuildContext context, BoxConstraints constraints)
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
        
        Container
        (
          margin: EdgeInsets.only(top: constraints.maxHeight * 0.01),
          child: Column
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
                child: OrgButton
                (
                  title: 'NGO',
                  icon: Icons.favorite,
                  onPress: NGORegistration(),
                ),
              ),

              Container
              (
                margin: EdgeInsets.only(top: constraints.maxHeight * 0.025,),
                height: constraints.maxHeight * 0.15,
                width: constraints.maxWidth * 0.8,

                constraints: BoxConstraints
                (
                  minWidth: 300,
                  minHeight: 110
                ),
                child: OrgButton
                (
                  title: 'BUSINESS',
                  icon: Icons.business,
                  onPress: BusinessRegistration(),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
