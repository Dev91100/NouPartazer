import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/components/IconText.dart';
import 'package:flutter/rendering.dart';

class LargeCustomButtonIconText extends StatelessWidget
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
  final bool scrollModalSheet;
  final bool hasSuperPress;
  final VoidCallback onSuperPress;

  LargeCustomButtonIconText
  (
    {
      this.onPress,
      this.isPopUpPage = false,
      this.isModalPage = false,
      this.isPage = false,
      this.isClose = false,
      this.text = 'Test',
      this.textDecoration = TextDecoration.none,
      this.hasIcon = false,
      this.icon = Icons.not_listed_location,
      this.fontSize = 20,
      this.fontWeight = FontWeight.w700,
      this.textColor = const Color.fromRGBO(245, 197, 41, 1),
      this.iconColor = const Color.fromRGBO(255, 255, 255, 1),
      this.hasBorder = true,
      this.borderWidth = 2,
      this.buttonColor = const Color.fromRGBO(255, 248, 97, 0.1),
      this.borderColor = const Color.fromRGBO(245, 197, 41, 1),
      this.iconRight = 5,
      this.elevation = 0,
      this.padding = const EdgeInsets.fromLTRB(15, 15, 15, 15),
      this.borderRadius = const BorderRadius.all(Radius.circular(10)),
      this.scrollModalSheet = true,
      this.hasSuperPress = false,
      this.onSuperPress,
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
      onPressed: (!hasSuperPress) ? ()
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
            isScrollControlled: scrollModalSheet,
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
      } : () => onSuperPress(),
    );
  }
}