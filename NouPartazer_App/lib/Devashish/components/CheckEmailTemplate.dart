import 'package:NouPartazer_App/Koomalai/Screens/Login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:NouPartazer_App/Devashish/components/TheOutlinedButtons.dart';
import 'package:NouPartazer_App/Devashish/components/YellowTitlePara.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:NouPartazer_App/Devashish/components/TheBackButton.dart';
import 'package:NouPartazer_App/Devashish/components/YellowTitles.dart';

class CheckEmailTemplate extends StatelessWidget 
{
  final String theParagraph;
  final String theButtonName;

  CheckEmailTemplate
  (
    {
      this.theButtonName,
      this.theParagraph,
    }
  );

  @override
  Widget build(BuildContext context) 
  {
    final screen = MediaQuery.of(context);
    return LayoutBuilder
    (
      builder: (ctx, constraints)
      {
        return Scaffold
        (
          body: SingleChildScrollView
          (
            child: Container(
              margin: EdgeInsets.only(top: screen.padding.top),
              child: Column
              (
                children: 
                [
                  TheBackButton(
                      press: () {

                        Colors.white;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return LoginScreen();
                            },
                          ),
                        );
                      }
                  ),

                  Icon
                  (
                    Icons.verified, //Icon Name
                    size: screen.size.height * 0.26, 
                    color: Color.fromRGBO(245,197,41,0.9),
                  ),

                  SizedBox(height: constraints.maxHeight * 0.06,),
                  YellowTitles
                  (
                    textContent: "Check Your Email",
                  ),

                  SizedBox(height: constraints.maxHeight * 0.02,),

                  Container
                  (
                    margin: EdgeInsets.symmetric(horizontal: constraints.maxWidth * 0.062),
                    child: YellowTitlePara
                    (
                      // paragraph: "We have sent you a reset password link to the registered email address.",
                      paragraph: theParagraph,
                      textAlignment: TextAlign.center,
                    ),
                  ),

                  SizedBox(height: constraints.maxHeight * 0.04,),

                  TheOutlinedButtons(
                    message: theButtonName,
                      press: () {

                        Colors.white;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return LoginScreen();
                            },
                          ),
                        );
                      }

                  ),
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}