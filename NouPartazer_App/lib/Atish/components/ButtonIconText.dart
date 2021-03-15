import 'package:flutter/material.dart';

import 'package:NouPartazer_App/Atish/components/IconText.dart';
import 'package:flutter/rendering.dart';

class ButtonIconText extends StatelessWidget
{
  final Widget openPage;
  final String text;
  final Color textColor;
  final Color iconColor;
  final double fontSize;
  final IconData icon;
  final FontWeight fontWeight;
  final Color buttonColor;
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
      this.textColor = const Color.fromRGBO(255, 255, 255, 1),
      this.iconColor = const Color.fromRGBO(255, 255, 255, 1),
      this.buttonColor = const Color.fromRGBO(0, 50, 193, 1),
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
      textColor: textColor,
      iconColor: iconColor,
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
      color: buttonColor,
      child: IconText
      (
        text: text,
        icon: icon,
        fontSize: fontSize,
        fontWeight: fontWeight,
        textColor: textColor,
        iconColor: iconColor,
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