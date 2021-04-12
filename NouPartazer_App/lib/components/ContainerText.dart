import 'package:flutter/material.dart';

import 'package:noupartazer_app/Global.dart';

class ContainerText extends StatelessWidget
{
  final EdgeInsets margin;
  final EdgeInsets padding;
  final Color borderColor;
  final Color boxColor;
  final Color textColor;
  final TextAlign textAlign;

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
      this.textAlign,
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
      margin: (margin != null) ? margin : EdgeInsets.only(right: Global().normalSpacing),
      padding: (padding != null) ? padding : EdgeInsets.symmetric(vertical: Global().tinySpacing),
      
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
        textAlign: textAlign,
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