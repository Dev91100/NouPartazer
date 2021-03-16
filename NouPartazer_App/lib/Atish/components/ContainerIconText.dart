import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/components/IconText.dart';

class ContainerIconText extends StatelessWidget
{
  final double mLeft, mTop, mRight, mBottom;
  final double pLeft, pTop, pRight, pBottom;
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
      this.iconSize = 25,
      this.fontSize = 18, 
      this.mLeft    = 0, 
      this.mTop     = 0, 
      this.mRight   = 0, 
      this.mBottom  = 0,
      this.pLeft    = 5, 
      this.pTop     = 5, 
      this.pRight   = 5, 
      this.pBottom  = 5,
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
      iconSize: iconSize,
      fontSize: fontSize,
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
      margin: EdgeInsets.fromLTRB
      (
        mLeft,
        mTop,
        mRight,
        mBottom,
      ),
      padding: EdgeInsets.fromLTRB
      (
        pLeft,
        pTop,
        pRight,
        pBottom,
      ),
      
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
        iconSize: iconSize,
        fontSize: fontSize,
        fontWeight: fontWeight,
        textColor: textColor,
        iconColor: iconColor,
      ),
    );
  }
}