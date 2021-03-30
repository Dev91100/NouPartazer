import 'package:flutter/material.dart';

import 'package:noupartazer_app/Global.dart';

class MediumText extends StatelessWidget
{
  final String text;
  final Color textColor;
  final double fontSize;
  final String fontFamily;
  final FontWeight fontWeight;
  final TextAlign textAlign;

  MediumText
  (
    {
      this.text = 'This is a test',
      this.textColor = Colors.black,
      this.fontSize,
      this.fontFamily,
      this.fontWeight,
      this.textAlign,
    }
  );

  @override
  Widget build(BuildContext context)
  {
    return Text
    (
      text,
      textAlign: textAlign,
      style: TextStyle
      (
        color: textColor,
        fontSize: (fontSize != null) ? fontSize: Global().mediumText,
        fontFamily: fontFamily,
        fontWeight: fontWeight
      ),
    );
  }
}