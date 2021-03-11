import 'package:flutter/material.dart';


class LongText extends StatelessWidget {
  @required
  final String title;

  final double fontSize;
  final FontWeight fontWeight;
  final double top, left, right;
  final int R, G, B;
  final double O;
  final TextAlign textAlign;

  LongText
  (
    {
      this.title,
      this.fontSize = 23,
      this.top = 0,
      this.left = 20,
      this.right = 20,
      this.fontWeight = FontWeight.w400,
      this.textAlign = TextAlign.justify,
      this.R = 102,
      this.G = 102,
      this.B = 102,
      this.O = 1,
    }
  );

  @override
  Widget build(BuildContext context)
  {
    return SingleChildScrollView
    (
      scrollDirection: Axis.vertical,
      child: Text
      (
        title,
        textAlign: textAlign,
        overflow: TextOverflow.visible,
        style: TextStyle
        (
          color: Color.fromRGBO(R, G, B, O),
          fontWeight: fontWeight,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
