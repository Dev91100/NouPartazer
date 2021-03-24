import 'package:flutter/material.dart';

import 'package:noupartazer_app/Devashish/Global.dart';

class NormalText extends StatelessWidget
{
  final String text;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;

  NormalText
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
        fontSize: (fontSize != null) ? fontSize: Global().normalText,
        fontWeight: fontWeight
      ),
    );
  }
}