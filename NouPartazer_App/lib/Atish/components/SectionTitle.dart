import 'package:flutter/material.dart';
import 'package:noupartazer_app/Devashish/Global.dart';

class SectionTitle extends StatelessWidget
{
  @required
  final String text;

  final double fontSize;
  final EdgeInsets margin;
  final Color color;
  final Alignment align;

  SectionTitle
  (
    {
      this.text = 'This is a test',
      this.fontSize,
      this.margin,
      this.color = const Color.fromRGBO(0, 0, 0, 1),
      this.align = Alignment.centerLeft,
    }
  );

  @override
  Widget build(BuildContext context)
  {
    return Align
    (
      alignment: align,
      child: SingleChildScrollView
      (
        scrollDirection: Axis.horizontal,
        child: Container
        (
          margin: (margin!= null) ? margin : EdgeInsets.only(bottom: Global().smallSpacing),
          child: 
          Text
          (
            text,
            style: TextStyle
            (
              color: color,
              fontWeight: FontWeight.w800,
              fontSize: (fontSize != null) ? fontSize: Global().mediumText,
            ),
          ),
        ),
      ),
    );
  }
}
