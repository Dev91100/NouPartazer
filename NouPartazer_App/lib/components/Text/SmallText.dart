import 'package:flutter/material.dart';

import 'package:noupartazer_app/Global.dart';

class SmallText extends StatelessWidget
{
  final String text;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlign;

  SmallText
  (
    {
      this.text = 'This is a test',
      this.textColor = Colors.black,
      this.fontSize,
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
        fontSize: (fontSize != null) ? fontSize: Global().smallText,
        fontWeight: fontWeight
      ),
    );
  }
}