import 'package:flutter/material.dart';
import 'package:noupartazer_app/Devashish/Global.dart';

import 'package:validators/validators.dart';
import 'package:validators/sanitizers.dart';

class CustomTextField extends StatelessWidget
{
  final Color textColor;
  final double textSize;
  final String labelText;
  final Color labelColor;
  final double labelSize;
  final Color errorColor;
  final double errorSize;
  final String errorMsg;
  final FontWeight fontWeight;
  final bool obscureText;
  final String fieldType;
  final bool optional;
  final int minLength;
  final int maxLength;
  final Color fillColor;
  final bool hasBorder;
  final double borderWidth;
  final Color errorBorderColor;
  final Color focusedErrorBorderColor;
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
  final bool addAsterix;
  final onSaved;

  CustomTextField
  (
    {
      this.textColor = Colors.black,
      this.textSize = 20,
      this.labelText = '',
      this.labelSize = 18,
      this.labelColor = const Color.fromRGBO(0, 0, 0, 1),
      this.fillColor = const Color.fromRGBO(242, 242, 242, 0.6),
      this.errorColor,
      this.errorSize,
      this.errorMsg,
      this.fontWeight = FontWeight.w700,
      this.obscureText = false,
      this.fieldType,
      this.optional = false,
      this.minLength,
      this.maxLength,
      this.hasSuffixIcon = true,
      this.suffixIcon = Icons.help_outline,
      this.iconSize,
      this.iconColor = const Color.fromRGBO(102, 102, 102, 1),
      this.hasBorder = false,
      this.borderWidth = 1.5,
      this.borderColor = Colors.black,
      this.errorBorderColor,
      this.focusedErrorBorderColor,
      this.margin = const EdgeInsets.only(top: 23),
      this.hasMultiline = false,
      this.maxLines = 1,
      this.minLines = 1,
      this.alignLabel = false,
      this.keyboardType,
      this.controller,
      this.addAsterix = true,
      this.onSaved,
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
        onSaved: onSaved,
        controller: controller,
        keyboardType: (hasMultiline) ? TextInputType.multiline : keyboardType,
        maxLines: (hasMultiline) ? maxLines : maxLines,
        minLines: minLines,
        obscureText: obscureText,
        validator: (value)
        {
          var val = trim(value);

          if(val.isEmpty && optional == false)
          {
            return (errorMsg != null) ? errorMsg : labelText + ' field is required.';
          }
          
          switch(fieldType)
          {
            case 'email':
              if(!isEmail(val))
              {
                return 'Please enter a valid email';
              }
              break;

            case 'length':
              if(!isLength(val, minLength, maxLength))
              {
                return 'Please enter a value of the correct length';
              }
              break;

            case 'alpha':
              if(!isAlpha(val))
              {
                return 'Please enter a valid ' + labelText;
              }
              break;
            case 'num':
              if(!isNumeric(val))
              {
                return 'Please enter a valid ' + labelText;
              }
              break;
            case 'alphaNumeric':
              if(!isAlphanumeric(val))
              {
                return 'Please enter a valid ' + labelText;
              }
              break;
          }

          return null;
        },
        style: TextStyle
        (
          color: textColor,
          fontSize: textSize,
        ),
        decoration: InputDecoration
        (
          filled: true,
          fillColor: fillColor,
          alignLabelWithHint: alignLabel, // Align label to the top in the case of multiline
          labelText: (addAsterix) ? labelText + '*' : labelText,
          errorStyle: TextStyle
          (
            color: errorColor,
            fontSize: errorSize,
          ),
          errorBorder: (errorBorderColor != null) ? OutlineInputBorder
          (
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide
            (
              width: borderWidth,
              color: borderColor,
            ),
          ) : null,
          focusedErrorBorder: (focusedErrorBorderColor != null) ? OutlineInputBorder
          (
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide
            (
              width: borderWidth,
              color: borderColor,
            ),
          ) : null,
          // errorText: errorMsg,
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
            size: (iconSize != null) ? iconSize: Global().mediumIcon,
          ) : null,
        ),
      ),
    );
  }
}