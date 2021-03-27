import 'package:flutter/material.dart';
import 'package:noupartazer_app/Devashish/Global.dart';

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
  final TextInputType keyboardType;
  final TextEditingController controller;

  IconTextField
  (
    {
      this.margin,
      this.text = 'Test',
      this.fontSize,
      this.textColor = const Color.fromRGBO(102, 102, 102, 1),
      this.iconDistance,
      this.icon = Icons.perm_identity_outlined,
      this.iconColor = const Color.fromRGBO(102, 102, 102, 1),
      this.iconSize,
      this.textFieldColor = const Color.fromRGBO(0, 0, 0, 1),
      this.hasMultiline = false,
      this.maxLines = 5,
      this.minLines = 1,
      this.keyboardType,
      this.controller,
    }
  );

  @override
  Widget build(BuildContext context)
  {
    return Container
    (
      margin: (margin != null) ? margin :EdgeInsets.all(Global().mediumSpacing),
      child: Row
      (
        mainAxisSize: MainAxisSize.max,
        children:
        [
          Container
          (
            margin: (iconDistance != null) ? iconDistance :EdgeInsets.only(right: Global().smallSpacing),
            child: Column
            (
              mainAxisSize: MainAxisSize.min,
              children:
              [
                Icon
                (
                  icon,
                  color: Colors.transparent,
                  size: (iconSize != null) ? iconSize : Global().normalIcon,
                ),
                Icon
                (
                  icon,
                  color: iconColor,
                  size: (iconSize != null) ? iconSize : Global().normalIcon,
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
                    fontSize: (fontSize != null) ? fontSize : Global().tinyText,
                  ),
                ),

                TextField
                (
                  controller: controller,
                  keyboardType: (hasMultiline) ? TextInputType.multiline : keyboardType,
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