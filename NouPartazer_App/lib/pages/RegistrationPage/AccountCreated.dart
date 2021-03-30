import 'package:flutter/material.dart';

import 'package:noupartazer_app/components/Buttons/LargeCustomButtonIconText.dart';
import 'package:noupartazer_app/components/Text/HugeText.dart';
import 'package:noupartazer_app/components/Text/MediumText.dart';
import 'package:noupartazer_app/Global.dart';
import 'package:noupartazer_app/components/TheBackButton.dart';
import 'package:noupartazer_app/Pages/UserAccess/UserAccessPanel.dart';

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
                    size: Global().hugeIcon, 
                    color: Color.fromRGBO(245,197,41,0.9),
                  ),

                  SizedBox(height: constraints.maxHeight * 0.06,),
                  HugeText
                  (
                    text: "Success",
                  ),

                  SizedBox(height: constraints.maxHeight * 0.02,),

                  Container
                  (
                    margin: EdgeInsets.symmetric(horizontal: constraints.maxWidth * 0.062),
                    child: MediumText
                    (
                      text: 'Your Account has been created successfully. You may now login with your credentials',
                      textAlign: TextAlign.center,
                    ),
                  ),

                  Container
                  (
                    width: constraints.maxWidth * 0.7,
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
                      onPress: UserAccessPanel(),
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