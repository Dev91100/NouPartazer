import 'package:flutter/material.dart';
import 'package:noupartazer_app/Atish/components/Buttons/LargeButtonIconText.dart';
import 'package:noupartazer_app/Atish/components/Buttons/LargeCustomButtonIconText.dart';

import 'package:noupartazer_app/Devashish/components/TheOutlinedButtons.dart';
import 'package:noupartazer_app/Devashish/components/YellowTitlePara.dart';
import 'package:noupartazer_app/Devashish/components/TheBackButton.dart';
import 'package:noupartazer_app/Devashish/components/YellowTitles.dart';

import 'package:noupartazer_app/Atish/Pages/UserAccess/UserAcessPanel.dart';

class AccountCreated extends StatelessWidget 
{

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
          appBar: AppBar
          (
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: TheBackButton(),
          ),
          body: SingleChildScrollView
          (
            child: Container
            (
              margin: EdgeInsets.only
              (
                top: screen.padding.top
              ),
              child: Column
              (
                children: 
                [
                  Icon
                  (
                    Icons.verified, //Icon Name
                    size: screen.size.height * 0.26, 
                    color: Color.fromRGBO(245,197,41,0.9),
                  ),

                  SizedBox(height: constraints.maxHeight * 0.06,),
                  YellowTitles
                  (
                    textContent: "Success",
                  ),

                  SizedBox(height: constraints.maxHeight * 0.02,),

                  Container
                  (
                    margin: EdgeInsets.symmetric(horizontal: constraints.maxWidth * 0.062),
                    child: Text
                    (
                      'Your Account has been created successfully. You may now login with your credentials',
                      style: TextStyle
                      (
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  Container
                  (
                    width: constraints.maxWidth * 0.7,
                    margin: EdgeInsets.only(top: 20),
                    child: LargeCustomButtonIconText
                    (
                      text: "Log In",
                      textColor: Color.fromRGBO(245, 197, 41, 1),
                      buttonColor: Color.fromRGBO(245, 197, 41, 0.2),
                      hasIcon: false,
                      elevation: 0,
                      isPageTransition: true,
                      transitionType: 'leftToRight',
                      transitionDuration: 1100,
                      onPress: UserAcessPanel(),
                    ),
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