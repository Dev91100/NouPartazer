import 'package:flutter/material.dart';

import 'package:noupartazer_app/Global.dart';

class TinyText extends StatelessWidget
{
  final String text;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlign;

  TinyText
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
      style: TextStyle
      (
        color: textColor,
        fontSize: (fontSize != null) ? fontSize: Global().tinyText,
        fontWeight: fontWeight
      ),
      textAlign: textAlign,
    );
  }
}