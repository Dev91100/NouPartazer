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
        decoration: InputDecoration
        (
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