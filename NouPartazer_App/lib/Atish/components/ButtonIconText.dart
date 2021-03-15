import 'package:flutter/material.dart';

import 'package:NouPartazer_App/Atish/components/IconText.dart';
import 'package:flutter/rendering.dart';

class ButtonIconText extends StatelessWidget
{
  final onPress;
  final String text;
  final Color textColor;
  final Color iconColor;
  final double fontSize;
  final bool hasIcon;
  final IconData icon;
  final FontWeight fontWeight;
  final Color buttonColor;
  final double iconRight;
  final double elevation;
  final bool isPopUpPage;
  final bool isModalPage;
  final bool isPage;
  final bool isClose;

  ButtonIconText
  (
    {
      this.onPress,
      this.isPopUpPage = false,
      this.isModalPage = false,
      this.isPage = false,
      this.isClose = false,
      this.text = 'Test',
      this.hasIcon = true,
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
        hasIcon: hasIcon,
        icon: icon,
        fontSize: fontSize,
        fontWeight: fontWeight,
        textColor: textColor,
        iconColor: iconColor,
        iconRight: iconRight,
      ),
      onPressed: ()
      {
        if(isPopUpPage)
        {
          showDialog
          (
            context: context,
            builder: (BuildContext context)
            {
              return onPress;
            }
          );
        }
        else if (isModalPage)
        {
          showModalBottomSheet
          (
            shape: RoundedRectangleBorder
            (
              borderRadius: BorderRadius.only
              (
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )
            ),
            context: context,
            builder: ((builder) => onPress)
          );
        }
        else if(isPage)
        {
          Navigator.push
          (
            context,
            MaterialPageRoute
            (
              builder: (context)
              {
                return onPress;
              },
            ),
          );
        }
        else if(isClose)
        {
          Navigator.of(context).pop();
        }
      },
    );
  }
}