import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget
{
  final String labelText;
  final Color labelColor;
  final double labelSize;
  final FontWeight fontWeight;
  final String errorText;
  final Color fillColor;
  final bool hasBorder;
  final double borderWidth;
  final Color borderColor;
  final bool hasSuffixIcon;
  final IconData suffixIcon;
  final double iconSize;
  final Color iconColor;
  final EdgeInsets margin;
  final bool hasMultiline;
  final int maxLines;
  final int minLines;
  final bool alignLabel;
  final TextInputType keyboardType; 

  final TextEditingController controller;


  CustomTextField
  (
    {
      this.labelText = 'This is a test',
      this.labelSize = 18,
      this.labelColor = const Color.fromRGBO(0, 0, 0, 1),
      this.fillColor = const Color.fromRGBO(242, 242, 242, 0.6),
      this.fontWeight = FontWeight.w700,
      this.errorText,
      this.hasSuffixIcon = true,
      this.suffixIcon = Icons.help_outline,
      this.iconSize,
      this.iconColor = const Color.fromRGBO(102, 102, 102, 1),
      this.hasBorder = false,
      this.borderWidth = 1.5,
      this.borderColor = Colors.black,
      this.margin = const EdgeInsets.only(top: 23),
      this.hasMultiline = false,
      this.maxLines = 1,
      this.minLines = 1,
      this.alignLabel = false,
      this.keyboardType,
      this.controller,
    }
  );

  @override
  Widget build(BuildContext context)
  {
    return Container
    (
      margin: margin,
      child: TextFormField
      (
        controller: controller,
        keyboardType: (hasMultiline) ? TextInputType.multiline : keyboardType,
        maxLines: (hasMultiline) ? maxLines : maxLines,
        minLines: minLines,
        decoration: InputDecoration
        (
          filled: true,
          fillColor: fillColor,
          alignLabelWithHint: alignLabel, // Align label to the top in the case of multiline
          labelText: labelText,
          errorText: (errorText != null) ? errorText : null,
          labelStyle: TextStyle
          (
            fontSize: labelSize,
            color: labelColor,
            fontWeight: fontWeight,
          ),
          border: (hasBorder) ? OutlineInputBorder
          (
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide
            (
              width: borderWidth,
              color: borderColor,
            ),
          ) : null,
          focusedBorder: (hasBorder) ? OutlineInputBorder
          (
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide
            (
              width: borderWidth,
              color: borderColor,
            ),
          ) : null,
          enabledBorder: (hasBorder) ? OutlineInputBorder
          (
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide
            (
              width: borderWidth,
              color: borderColor,
            ),
          ) : null,
          suffixIcon: (hasSuffixIcon) ?
          Icon
          (
            suffixIcon,
            color: iconColor,
            size: (iconSize != null) ? iconSize : labelSize,
          ) : null,
        ),
      ),
    );
  }
}