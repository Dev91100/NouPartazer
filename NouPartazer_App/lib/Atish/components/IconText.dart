import 'package:flutter/material.dart';

class IconText extends StatelessWidget
{
  final String text;
  final TextDecoration textDecoration;
  final Color textColor;
  final Color iconColor;
  final double fontSize;
  final bool hasIcon;
  final IconData icon;
  final double iconSize;
  final FontWeight fontWeight;
  final double iconRight;
  
  IconText
  (
    {
      this.text,
      this.textDecoration = TextDecoration.none,
      this.hasIcon = true,
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
          child: (hasIcon) ? Icon
          (
            icon,
            size: iconSize,
            color: iconColor,
          ) : Container(height: 0, width: 0,),
        ),
        Container
        (
          child: Text
          (
            text,
            style: TextStyle
            (
              color: textColor,
              fontWeight: fontWeight,
              fontSize: fontSize,
              decoration: textDecoration,
            ),
          ),
        ),
      ],
    );
  }
}