import 'package:flutter/material.dart';

import 'package:noupartazer_app/Devashish/Global.dart';

class MediumText extends StatelessWidget
{
  final String text;
  final Color textColor;
  final double fontSize;
  final String fontFamily;
  final FontWeight fontWeight;

  MediumText
  (
    {
      this.text = 'This is a test',
      this.textColor = Colors.black,
      this.fontSize,
      this.fontFamily,
      this.fontWeight
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
        fontSize: (fontSize != null) ? fontSize: Global().mediumText,
        fontFamily: fontFamily,
        fontWeight: fontWeight
      ),
    );
  }
}