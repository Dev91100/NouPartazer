import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:noupartazer_app/Atish/components/IconText.dart';

class ButtonIconText extends StatelessWidget
{
  final onPress;
  final String text;
  final TextDecoration textDecoration;
  final Color textColor;
  final Color iconColor;
  final bool hasBorder;
  final Color borderColor;
  final double borderWidth;
  final BorderRadius borderRadius;
  final EdgeInsets padding;
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
      this.textDecoration = TextDecoration.none,
      this.hasIcon = true,
      this.icon = Icons.not_listed_location,
      this.fontSize = 18,
      this.fontWeight = FontWeight.w600,
      this.textColor = const Color.fromRGBO(255, 255, 255, 1),
      this.iconColor = const Color.fromRGBO(255, 255, 255, 1),
      this.hasBorder = false,
      this.borderWidth = 0,
      this.buttonColor = const Color.fromRGBO(0, 50, 193, 1),
      this.borderColor = const Color.fromRGBO(0, 0, 0, 0),
      this.iconRight = 5,
      this.elevation = 2,
      this.padding = const EdgeInsets.fromLTRB(15, 10, 15, 10),
      this.borderRadius = const BorderRadius.all(Radius.circular(5)),
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
    return ElevatedButton
    (
      style: OutlinedButton.styleFrom
      (
        backgroundColor: buttonColor,
        padding: padding,
        elevation: elevation,
        shape: RoundedRectangleBorder
        (
          borderRadius: borderRadius,
        ),
        side: (hasBorder) ? BorderSide
        (
          color: borderColor,
          width: borderWidth
        ) : null,
      ),
      
      child: IconText
      (
        text: text,
        textDecoration: textDecoration,
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