import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:noupartazer_app/Global.dart';
import 'package:noupartazer_app/components/IconText.dart';
import 'package:noupartazer_app/components/Transitions/AllTransitions.dart';

class SmallButtonIconText extends StatelessWidget
{
  final onPress;
  final String text;
  final TextDecoration textDecoration;
  final Color textColor;
  final Color iconColor;
  final bool hasBorder;
  final Color borderColor;
  final double borderWidth;
  final BorderRadius borderRadius;
  final EdgeInsets padding;
  final double fontSize;
  final bool hasIcon;
  final IconData icon;
  final FontWeight fontWeight;
  final Color buttonColor;
  final double iconRight;
  final double elevation;
  final bool isPopUpPage;
  final bool isModalPage;
  final bool isPage;
  final bool isClose;
  final bool scrollModalSheet;
  final bool isPageTransition;
  final String transitionType;
  final int transitionDuration;
  final VoidCallback onSuperPress;
  final EdgeInsets margin;

  SmallButtonIconText
  (
    {
      this.onPress,
      this.isPopUpPage = false,
      this.isModalPage = false,
      this.isPage = false,
      this.isClose = false,
      this.text = 'Test',
      this.textDecoration = TextDecoration.none,
      this.hasIcon = true,
      this.icon = Icons.not_listed_location,
      this.fontSize,
      this.fontWeight = FontWeight.w600,
      this.textColor = const Color.fromRGBO(255, 255, 255, 1),
      this.iconColor = const Color.fromRGBO(255, 255, 255, 1),
      this.hasBorder = false,
      this.borderWidth = 0,
      this.buttonColor = const Color.fromRGBO(0, 50, 193, 1),
      this.borderColor = const Color.fromRGBO(0, 0, 0, 0),
      this.iconRight = 5,
      this.elevation = 0,
      this.padding,
      this.borderRadius = const BorderRadius.all(Radius.circular(10)),
      this.scrollModalSheet = true,
      this.isPageTransition = false,
      this.transitionType = 'scale',
      this.transitionDuration = 1100,
      this.onSuperPress,
      this.margin,
    }
  )
  {
    IconText
    (
      text: text,
      icon: icon,
      fontSize: (fontSize != null) ? fontSize : Global().smallText,
      fontWeight: fontWeight,
      textColor: textColor,
      iconColor: iconColor,
      iconRight: iconRight,
    );
  }

  @override
  Widget build(BuildContext context)
  {
    return Container(
      margin: margin,
      child: TextButton
      (
        style: OutlinedButton.styleFrom
        (
          backgroundColor: buttonColor,
          padding: (padding != null) ? padding : EdgeInsets.symmetric
          (
            horizontal: Global().normalSpacing,
            vertical: Global().smallSpacing,
          ),
          elevation: elevation,
          shape: RoundedRectangleBorder
          (
            borderRadius: borderRadius,
          ),
          side: (hasBorder) ? BorderSide
          (
            color: borderColor,
            width: borderWidth
          ) : null,
        ),
        
        child: IconText
        (
          text: text,
          textDecoration: textDecoration,
          hasIcon: hasIcon,
          icon: icon,
          fontSize: (fontSize != null) ? fontSize : Global().smallText,
          fontWeight: fontWeight,
          textColor: textColor,
          iconColor: iconColor,
          iconRight: iconRight,
        ),

        onPressed: (onSuperPress == null) ? ()
        {
          if(isPopUpPage)
          {
            showDialog
            (
              context: context,
              builder: (BuildContext context)
              {
                return onPress;
              }
            );
          }
          else if (isModalPage)
          {
            showModalBottomSheet
            (
              isScrollControlled: scrollModalSheet,
              shape: RoundedRectangleBorder
              (
                borderRadius: BorderRadius.only
                (
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )
              ),
              context: context,
              builder: ((builder) => onPress)
            );
          }
          else if(isPage)
          {
            Navigator.push
            (
              context,
              MaterialPageRoute
              (
                builder: (context)
                {
                  return onPress;
                },
              ),
            );
          }
          else if(isClose)
          {
            Navigator.of(context).pop();
          }
          else if(isPageTransition)
          {
            AllTransitions().getTransition
            (
              context: context,
              transitionType: transitionType,
              transitionDuration: transitionDuration,
              onPress: onPress, 
            );
          }
        } : () => onSuperPress(),
      ),
    );
  }
}