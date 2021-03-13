import 'package:flutter/material.dart';

import 'package:NouPartazer_App/Atish/components/IconText.dart';
import 'package:flutter/rendering.dart';

class ButtonIconText extends StatelessWidget
{
  final Widget openPage;
  final String text;
  final int TextR, TextG, TextB;
  final double TextO;
  final int IconR, IconG, IconB;
  final double IconO;
  final double fontSize;
  final IconData icon;
  final FontWeight fontWeight;
  final int ButtonR, ButtonG, ButtonB;
  final double ButtonO;
  final double iconRight;
  final double elevation;

  ButtonIconText
  (
    {
      this.openPage,
      this.text = 'Test',
      this.icon = Icons.not_listed_location,
      this.fontSize = 18,
      this.fontWeight = FontWeight.w600,
      this.TextR = 255,
      this.TextG = 255,
      this.TextB = 255,
      this.TextO = 1,
      this.IconR  = 255,
      this.IconG  = 255,
      this.IconB  = 255,
      this.IconO  = 1,
      this.ButtonR = 0,
      this.ButtonG = 50,
      this.ButtonB = 193,
      this.ButtonO = 1,
      this.iconRight = 5,
      this.elevation = 2,
    }
  )
  {
    IconText
    (
      text: text,
      icon: icon,
      fontSize: fontSize,
      fontWeight: fontWeight,
      R: TextR,
      G: TextG,
      B: TextB,
      O: TextO,
      IconR: IconR,
      IconG: IconG,
      IconB: IconB,
      IconO: IconO,
      iconRight: iconRight,
    );
  }

  @override
  Widget build(BuildContext context)
  {
    return RaisedButton
    (
      padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
      elevation: elevation,
      shape: RoundedRectangleBorder
      (
        borderRadius: BorderRadius.all(Radius.circular(5))
      ),
      color: Color.fromRGBO(ButtonR, ButtonG, ButtonB, ButtonO),
      child: IconText
      (
        text: text,
        icon: icon,
        fontSize: fontSize,
        fontWeight: fontWeight,
        R: TextR,
        G: TextG,
        B: TextB,
        O: TextO,
        IconR: IconR,
        IconG: IconG,
        IconB: IconB,
        IconO: IconO,
        iconRight: iconRight,
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
              return openPage;
            },
          ),
        );
      },
    );
  }
}