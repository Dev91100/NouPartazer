import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:noupartazer_app/Global.dart';
import 'package:noupartazer_app/components/IconText.dart';
import 'package:noupartazer_app/components/Transitions/AllTransitions.dart';

class SmallCustomButtonIconText extends StatelessWidget
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
  final bool processing;
  final Color processingColor;
  final VoidCallback onSuperPress;

  SmallCustomButtonIconText
  (
    {
      this.onPress,
      this.isPopUpPage = false,
      this.isModalPage = false,
      this.isPage = false,
      this.isClose = false,
      this.text = 'Test',
      this.textDecoration = TextDecoration.none,
      this.hasIcon = false,
      this.icon = Icons.not_listed_location,
      this.fontSize,
      this.fontWeight = FontWeight.w700,
      this.textColor = const Color.fromRGBO(245, 197, 41, 1),
      this.iconColor = const Color.fromRGBO(255, 255, 255, 1),
      this.hasBorder = true,
      this.borderWidth = 2,
      this.buttonColor = const Color.fromRGBO(255, 248, 97, 0.1),
      this.borderColor = const Color.fromRGBO(245, 197, 41, 1),
      this.iconRight = 5,
      this.elevation = 0,
      this.padding = const EdgeInsets.fromLTRB(15, 10, 15, 10),
      this.borderRadius = const BorderRadius.all(Radius.circular(10)),
      this.scrollModalSheet = true,
      this.isPageTransition = false,
      this.transitionType = 'scale',
      this.transitionDuration = 1100,
      this.processingColor = const Color.fromRGBO(245, 197, 41, 1),
      this.processing = false,
      this.onSuperPress,
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
    return ElevatedButton
    (
      style: OutlinedButton.styleFrom
      (
        primary: (processing) ? processingColor : buttonColor,
        backgroundColor: (processing) ? processingColor : buttonColor,
        padding: padding,
        elevation: elevation,
        shape: RoundedRectangleBorder
        (
          borderRadius: borderRadius,
        ),
        side: (hasBorder) ? BorderSide
        (
          color: (processing) ? Colors.transparent : borderColor,
          width: borderWidth
        ) : null,
      ),
      
      child: (processing) ? SizedBox
      (
        height: 15,
        width: 15,
        child: CircularProgressIndicator
        (
          strokeWidth: 2,
          backgroundColor: Color.fromRGBO(0, 50, 193, 1)
        ),
      ) :
      IconText
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
    );
  }
}