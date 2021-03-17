import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/components/ButtonIconText.dart';
import 'package:noupartazer_app/Atish/components/CustomButtonIconText.dart';

class TwoButtons extends StatelessWidget
{
  final String buttonText1;
  final String buttonText2;
  final Color textColor;
  final Color buttonColor;
  final Color borderColor;

  TwoButtons
  (
    {
      this.buttonText1 = 'Cancel',
      this.buttonText2 = 'Confirm',
      this.textColor = const Color.fromRGBO(245, 197, 41, 1),
      this.buttonColor = const Color.fromRGBO(255, 248, 97, 0.2),
      this.borderColor = const Color.fromRGBO(245, 197, 41, 1),
    }
  );

  @override
  Widget build(BuildContext context)
  {
    return Row
    (
      mainAxisAlignment: MainAxisAlignment.center,
      children:
      [
        ButtonIconText
        (
          text: buttonText1,
          textDecoration: TextDecoration.underline,
          textColor: Color.fromRGBO(102, 102, 102, 1),
          fontWeight: FontWeight.w700,
          fontSize: 18,
          buttonColor: Colors.transparent,
          elevation: 0,
          hasIcon: false,
          isClose: true,
          padding: EdgeInsets.only(right: 30),
        ),

        CustomButtonIconText
        (
          text: buttonText2,
          textColor: textColor,
          buttonColor: buttonColor,
          borderColor: borderColor,
        ),
      ]
    );
  }
}