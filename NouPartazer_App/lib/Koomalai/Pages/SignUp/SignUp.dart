import 'package:flutter/material.dart';

import 'package:noupartazer_app/Koomalai/Pages/RegistrationPage/BusinessRegistration.dart';
import 'package:noupartazer_app/Koomalai/Pages/SignIn/SignIn.dart';
import 'package:noupartazer_app/Koomalai/Pages/RegistrationPage/NGORegistration.dart';
import 'package:noupartazer_app/Koomalai/src/screens/secondMainScreen.dart';
import 'package:noupartazer_app/Atish/Pages/SignInAndSignUp/OrgButtons.dart';

class SignUp extends StatelessWidget
{
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
                                      backgroundColor: Color.fromRGBO(0, 0, 0, 0.6),
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
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0
                                        ),
                                      ),
                                    ),
                                    
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
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
                                        "Sign Up",
                                        style: TextStyle
                                        (
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
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

                              child: OrgButtons
                              (
                                icon: Icons.favorite,
                                title: 'NGO',
                                onPress: NGORegistration(),
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
                              child: OrgButtons
                              (
                                icon: Icons.business,
                                title: 'BUSINESS',
                                onPress: BusinessRegistration(),
                              ),                             
                            ),

                            SizedBox
                            (
                              height: constraints.maxHeight * 0.025,
                            ),
                          ],
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
