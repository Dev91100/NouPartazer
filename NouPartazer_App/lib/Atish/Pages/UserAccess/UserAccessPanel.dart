import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/Pages/UserAccess/SignInWidget.dart';
import 'package:noupartazer_app/Atish/Pages/UserAccess/SignUpWidget.dart';
import 'package:noupartazer_app/Atish/components/Buttons/LargeButtonIconText.dart';
import 'package:noupartazer_app/Koomalai/Pages/BottomNavigation/IndividualBottomNav.dart';

class UserAccessPanel extends StatefulWidget
{
  @override
  _UserAccessPanelState createState() => _UserAccessPanelState();
}

class _UserAccessPanelState extends State<UserAccessPanel>
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
                            transitionType: 'upToDown',
                            transitionDuration: 1100,
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
                                    textColor: (isSignIn) ? selectedTextColor : unselectedTextColor,
                                    hasIcon: false,
                                    elevation: 0,
                                    borderRadius: BorderRadius.circular(0.0),
                                    buttonColor: (isSignIn) ? selectedButtonColor : unselectedButtonColor,
                                    onSuperPress: (!isSignIn) ? chooseButton : null,
                                  ),
                                ),

                                Container
                                (
                                  width: screen.width * 0.5,
                                  child: LargeButtonIconText
                                  (
                                    text: 'Sign Up',
                                    textColor: (isSignUp) ? selectedTextColor : unselectedTextColor,
                                    hasIcon: false,
                                    elevation: 0,
                                    borderRadius: BorderRadius.circular(0.0),
                                    buttonColor: (isSignUp) ? selectedButtonColor : unselectedButtonColor,
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
                    child: (isSignIn) ? SignInWidget(constraints) : 
                    SignUpWidget(constraints),
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
