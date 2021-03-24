import 'package:flutter/material.dart';
import 'package:noupartazer_app/Devashish/Global.dart';


class LongText extends StatelessWidget
{
  @required
  final String text;

  final double fontSize;
  final FontWeight fontWeight;
  final Color textColor;
  final TextAlign textAlign;

  LongText
  (
    {
      this.text = 'Test',
      this.fontSize,
      this.fontWeight = FontWeight.w500,
      this.textAlign = TextAlign.justify,
      this.textColor = const Color.fromRGBO(0, 0, 0, 1),
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
        text,
        textAlign: textAlign,
        overflow: TextOverflow.visible,
        style: TextStyle
        (
          color: textColor,
          fontWeight: fontWeight,
          fontSize: (fontSize != null) ? fontSize : Global().tinyText,
        ),
      ),
    );
  }
}
