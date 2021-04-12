import 'package:flutter/material.dart';
import 'package:noupartazer_app/Global.dart';


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
      this.fontWeight = FontWeight.w400,
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
      child: RichText
      (
        text: TextSpan
        (
          text: text,
          style: TextStyle
          (
            color: textColor,
            fontWeight: fontWeight,
            fontSize: (fontSize != null) ? fontSize : Global().smallText,
          ),
        ),
        textAlign: textAlign,
        overflow: TextOverflow.visible,
      ),
    );
  }
}
