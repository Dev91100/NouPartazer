import 'package:flutter/material.dart';


class LongText extends StatelessWidget
{
  @required
  final String title;

  final double fontSize;
  final FontWeight fontWeight;
  final double top, left, right;
  final Color color;
  final TextAlign textAlign;

  LongText
  (
    {
      this.title = 'Test',
      this.fontSize = 23,
      this.top = 0,
      this.left = 20,
      this.right = 20,
      this.fontWeight = FontWeight.w400,
      this.textAlign = TextAlign.justify,
      this.color = const Color.fromRGBO(0, 0, 0, 1),
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
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
