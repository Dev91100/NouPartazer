import 'package:flutter/material.dart';

import 'package:noupartazer_app/Devashish/Global.dart';

class SmallText extends StatelessWidget
{
  final String text;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;

  SmallText
  (
    {
      this.text = 'This is a test',
      this.textColor = Colors.black,
      this.fontSize,
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
        fontSize: (fontSize != null) ? fontSize: Global().smallText,
        fontWeight: fontWeight
      ),
    );
  }
}