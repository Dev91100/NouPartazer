import 'package:flutter/material.dart';

class IconText extends StatelessWidget
{
  final String text;
  final int R, G, B;
  final int IconR, IconG, IconB;
  final double O;
  final double IconO;
  final double fontSize;
  final IconData icon;
  final double iconSize;
  final FontWeight fontWeight;
  final double iconRight;
  
  IconText
  (
    {
      this.text,
      this.icon,
      this.iconSize = 25,
      this.fontSize = 18,
      this.fontWeight = FontWeight.w600,
      this.iconRight = 0,
      this.R = 0,
      this.G = 0,
      this.B = 0,
      this.O = 1,
      this.IconR = 0,
      this.IconG = 0,
      this.IconB = 0,
      this.IconO = 1,
    }
  );

  @override
  Widget build(BuildContext context)
  {
    return Row
    (
      mainAxisSize: MainAxisSize.min,
      children:
      [
        Container
        (
          margin: EdgeInsets.only(right: iconRight),
          child: FittedBox
          (
            fit: BoxFit.contain,
            child: Icon
            (
              icon,
              size: iconSize,
              color: Color.fromRGBO(IconR, IconG, IconB, IconO),
            ),
          ),
        ),
        Container
        (
          child: FittedBox
          (
            fit: BoxFit.contain,
            child: Text
            (
              text,
              style: TextStyle
              (
                color: Color.fromRGBO(R, G, B, O),
                fontWeight: fontWeight,
                fontSize: fontSize,
              ),
            ),
          ),
        ),
      ],
    );
  }
}