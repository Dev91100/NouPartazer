import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget
{
  final String labelText;
  final FontWeight fontWeight;
  final String errorText;
  final double borderWidth;
  final Color borderColor;
  final bool hasSuffixIcon;
  final IconData suffixIcon;
  final EdgeInsets margin;
  final bool hasMultiline;
  final int maxLines;

  CustomTextField
  (
    {
      this.labelText = 'This is a test',
      this.fontWeight = FontWeight.w500,
      this.errorText,
      this.hasSuffixIcon = true,
      this.suffixIcon = Icons.help_outline,
      this.borderWidth = 1.5,
      this.borderColor = Colors.black,
      this.margin = const EdgeInsets.only(top: 23),
      this.hasMultiline = false,
      this.maxLines = 1,
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
        keyboardType: (hasMultiline) ? TextInputType.multiline : null,
        maxLines: (hasMultiline) ? maxLines : maxLines,
        decoration: InputDecoration
        (
          alignLabelWithHint: true, // Align label to the top in the case of multiline
          labelText: labelText,
          errorText: (errorText != null) ? errorText : null,
          labelStyle: TextStyle
          (
            fontWeight: fontWeight,
          ),
          border: OutlineInputBorder
          (
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide
            (
              width: borderWidth,
              color: borderColor,
            ),
          ),
          focusedBorder: OutlineInputBorder
          (
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide
            (
              width: borderWidth,
              color: borderColor,
            ),
          ),
          enabledBorder: OutlineInputBorder
          (
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide
            (
              width: borderWidth,
              color: borderColor,
            ),
          ),
          suffixIcon: (hasSuffixIcon) ? Icon(suffixIcon,) : null,
        ),
      ),
    );
  }
}