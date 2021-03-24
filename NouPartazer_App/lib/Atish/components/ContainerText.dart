import 'package:flutter/material.dart';

import 'package:noupartazer_app/Devashish/Global.dart';

class ContainerText extends StatelessWidget
{
  final EdgeInsets margin;
  final EdgeInsets padding;
  final Color borderColor;
  final Color boxColor;
  final Color textColor;

  final double borderWidth;
  final double borderRadius;

  final String text;
  final double fontSize;
  final FontWeight fontWeight;

  ContainerText
  (
    {
      this.text = 'Test',
      this.fontWeight = FontWeight.bold,
      this.fontSize, 
      this.margin = const EdgeInsets.only(right: 15),
      this.padding = const EdgeInsets.all(5),
      this.borderColor = const Color.fromRGBO(0, 0, 0, 0),
      this.boxColor = const Color.fromRGBO(0, 0, 0, 1),
      this.textColor = const Color.fromRGBO(255, 255, 255, 1),
      this.borderRadius = 5,
      this.borderWidth  = 0
    }
  );

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
      child: Text
      (
        text,
        style: TextStyle
        (
          fontSize: (fontSize != null) ? fontSize : Global().smallText,
          fontWeight: fontWeight,
          color: textColor
        ),
      ),
    );
  }
}