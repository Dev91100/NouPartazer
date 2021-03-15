import 'package:flutter/material.dart';

class IconText extends StatelessWidget
{
  final String text;
  final Color textColor;
  final Color iconColor;
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
      this.textColor = const Color.fromRGBO(0, 0, 0, 1),
      this.iconColor = const Color.fromRGBO(0, 0, 0, 1),
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
              color: iconColor,
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
                color: textColor,
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