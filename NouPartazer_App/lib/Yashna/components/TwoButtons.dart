import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/components/Buttons/SmallButtonIconText.dart';
import 'package:noupartazer_app/Atish/components/Buttons/SmallCustomButtonIconText.dart';
import 'package:noupartazer_app/Devashish/Global.dart';

class TwoButtons extends StatelessWidget
{
  final String buttonText1;
  final String buttonText2;
  final Color textColor;
  final Color buttonColor;
  final Color borderColor;
  final onPress;
  final bool isPopUpPage;
  final bool isModalPage;
  final bool isPage;

  TwoButtons
  (
    {
      this.onPress,
      this.isPopUpPage = false,
      this.isModalPage = false,
      this.isPage = false,
      this.buttonText1 = 'Cancel',
      this.buttonText2 = 'Confirm',
      this.textColor = const Color.fromRGBO(245, 197, 41, 1),
      this.buttonColor = const Color.fromRGBO(255, 248, 97, 0.1),
      this.borderColor = const Color.fromRGBO(245, 197, 41, 1),
    }
  );

  @override
  Widget build(BuildContext context)
  {
    return Container(
      margin: EdgeInsets.only(top: Global().smallSpacing),
      child: Row
      (
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:
        [
          SmallButtonIconText
          (
            text: buttonText1,
            textDecoration: TextDecoration.underline,
            textColor: Color.fromRGBO(102, 102, 102, 1),
            buttonColor: Colors.transparent,
            elevation: 0,
            hasIcon: false,
            isClose: true,
            margin: EdgeInsets.only(right: Global().largeSpacing),
          ),

          SmallCustomButtonIconText
          (
            text: buttonText2,
            onPress: onPress,
            isPopUpPage: isPopUpPage,
            isModalPage: isModalPage,
            isPage: isPage,
            textColor: textColor,
            buttonColor: buttonColor,
            borderColor: borderColor,
          ),
        ]
      ),
    );
  }
}