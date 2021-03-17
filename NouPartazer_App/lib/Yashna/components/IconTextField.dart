import 'package:flutter/material.dart';

class IconTextField extends StatelessWidget
{
  final EdgeInsets margin;
  final String text;
  final Color textColor;
  final double fontSize;
  final EdgeInsets iconDistance;
  final IconData icon;
  final Color iconColor;
  final double iconSize;
  final Color textFieldColor;
  final bool hasMultiline;
  final int maxLines;
  final int minLines;

  IconTextField
  (
    {
      this.margin = const EdgeInsets.only(top:30),
      this.text = 'Test',
      this.fontSize = 18,
      this.textColor = const Color.fromRGBO(102, 102, 102, 1),
      this.iconDistance = const EdgeInsets.only(right: 10),
      this.icon = Icons.perm_identity_outlined,
      this.iconColor = const Color.fromRGBO(102, 102, 102, 1),
      this.iconSize = 30,
      this.textFieldColor = const Color.fromRGBO(0, 0, 0, 1),
      this.hasMultiline = false,
      this.maxLines = 5,
      this.minLines = 1,
    }
  );

  @override
  Widget build(BuildContext context)
  {
    return Container
    (
      margin: margin,
      child: Row
      (
        mainAxisSize: MainAxisSize.max,
        children:
        [
          Container
          (
            margin: iconDistance,
            child: Column
            (
              mainAxisSize: MainAxisSize.min,
              children:
              [
                Icon
                (
                  icon,
                  color: Colors.transparent,
                  size: iconSize,
                ),
                Icon
                (
                  icon,
                  color: iconColor,
                  size: iconSize,
                ),
              ],
            ),
          ),

          Expanded
          (
            child: Column
            (
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children:
              [
                Text
                (
                  text,
                  style: TextStyle
                  (
                    color: textColor,
                    fontSize: fontSize,
                  ),
                ),

                TextField
                (
                  keyboardType: (hasMultiline) ? TextInputType.multiline : null,
                  maxLines: (hasMultiline) ? maxLines : 1,
                  minLines: minLines,
                  style: TextStyle
                  (
                    color: textFieldColor,
                  )
                ),
              ]
            ),
          ),
        ]
      ),
    );
  }
}