import 'package:flutter/material.dart';

import 'package:noupartazer_app/Global.dart';

import 'package:noupartazer_app/components/IconText.dart';

class ContainerIconText extends StatelessWidget
{
  final EdgeInsets margin;
  final EdgeInsets padding;
  final Color borderColor;
  final Color boxColor;
  final Color textColor;
  final Color iconColor;

  final double borderWidth;
  final double borderRadius;

  final String text;
  final FontWeight fontWeight;
  final IconData icon;
  final double iconSize;
  final double fontSize;

  ContainerIconText
  (
    {
      this.text = 'Test',
      this.fontWeight = FontWeight.normal,
      this.icon = Icons.not_listed_location,
      this.iconSize,
      this.fontSize, 
      this.margin = const EdgeInsets.only(right: 15),
      this.padding = const EdgeInsets.all(5),
      this.borderColor = const Color.fromRGBO(0, 0, 0, 0),
      this.boxColor = const Color.fromRGBO(0, 0, 0, 1),
      this.textColor = const Color.fromRGBO(255, 255, 255, 1),
      this.iconColor = const Color.fromRGBO(255, 255, 255, 1),
      
      this.borderRadius = 5,
      this.borderWidth  = 0
    }
  )
  {
    IconText
    (
      text: text,
      icon: icon,
      iconSize: (iconSize != null) ? iconSize : Global().smallIcon,
      fontSize: (fontSize != null) ? fontSize : Global().smallText,
      fontWeight: fontWeight,
      textColor: textColor,
      iconColor: iconColor,
    );
  }

  @override
  Widget build(BuildContext context)
  {
    return Container
    (
      margin: margin,
      padding: padding,
      
      decoration: BoxDecoration
      (
        color: boxColor,
        border: Border.all
        (
          color: borderColor,
          width: borderWidth,
        ),
        borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
      ),
      child: IconText
      (
        text: text,
        icon: icon,
        iconSize: (iconSize != null) ? iconSize : Global().smallIcon,
        fontSize: (fontSize != null) ? fontSize : Global().smallText,
        fontWeight: fontWeight,
        textColor: textColor,
        iconColor: iconColor,
      ),
    );
  }
}