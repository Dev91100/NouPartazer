import 'package:flutter/material.dart';

class IconText extends StatelessWidget
{
  final String text;
  final int R, G, B;
  final double O;
  final double fontSize;
  final IconData icon;
  final FontWeight fontWeight;
  final double boxLeft;
  final double boxTop;
  final double boxRight;
  final double boxBottom;
  final double iconRight;

  IconText
  (
    {
      this.text,
      this.icon,
      this.fontSize = 18,
      this.fontWeight = FontWeight.w600,
      this.boxLeft = 0,
      this.boxTop = 0,
      this.boxRight = 0,
      this.boxBottom = 0,
      this.iconRight = 0,
      this.R = 0,
      this.G = 0,
      this.B = 0,
      this.O = 1,
    }
  );

  @override
  Widget build(BuildContext context)
  {
    return Container
    (
      margin: EdgeInsets.fromLTRB
      (
        boxLeft,
        boxTop,
        boxRight,
        boxBottom
      ),
      child: Row
      (
        children:
        [
          Container
          (
            margin: EdgeInsets.only(right: iconRight),
            child: Icon
            (
              icon,
              color: Color.fromRGBO(R, G, B, O),
            ),
          ),
          Text
          (
            text,
            style: TextStyle
            (
              color: Color.fromRGBO(R, G, B, O),
              fontWeight: fontWeight,
              fontSize: fontSize,
            ),
          ),
        ],
      ),
    );
  }
}