import 'package:flutter/material.dart';

import 'package:noupartazer_app/Global.dart';

class HugeText extends StatelessWidget
{
  final String text;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;

  HugeText
  (
    {
      this.text = 'This is a test',
      this.textColor = const Color.fromRGBO(245, 197, 41, 1),
      this.fontSize,
      this.fontWeight = FontWeight.bold,
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
        fontSize: (fontSize != null) ? fontSize: Global().hugeText,
        fontWeight: fontWeight
      ),
    );
  }
}