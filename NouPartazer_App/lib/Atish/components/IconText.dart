import 'package:flutter/material.dart';

class IconText extends StatelessWidget
{
  final String text;
  final int R, G, B;
  final double O;
  final double fontSize;
  final IconData icon;
  final FontWeight fontWeight;

  IconText
  (
    {
      this.text,
      this.icon,
      this.fontSize = 18,
      this.fontWeight = FontWeight.w600,
      this.R = 0,
      this.G = 0,
      this.B = 0,
      this.O = 1,
    }
  );

  @override
  Widget build(BuildContext context)
  {
    return Row
    (
      children:
      [
        Icon
        (
          icon,
          color: Color.fromRGBO(R, G, B, O),
        ),
        Text
        (
          text,
          style: TextStyle
          (
            color: Color.fromRGBO(R, G, B, O),
            fontWeight: fontWeight,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}