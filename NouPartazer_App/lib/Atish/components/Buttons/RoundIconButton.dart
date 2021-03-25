import 'package:flutter/material.dart';
import 'package:noupartazer_app/Devashish/Global.dart';

import 'package:noupartazer_app/Devashish/components/Transitions/AllTransitions.dart';

class RoundIconButton extends StatelessWidget
{
  final onPress;
  final bool isModalPage;
  final bool isPopUpPage;
  final bool isPage;
  final bool isClose;
  final IconData icon;
  final double height, width;
  final EdgeInsets margin;
  final double iconSize;
  final double elevation;
  final Color iconColor;
  final Color backgroundColor;
  final bool scrollModalSheet;
  final bool isPageTransition;
  final String transitionType;
  final int transitionDuration;
  final bool hasSuperPress;
  final VoidCallback onSuperPress;

  RoundIconButton
  (
    {
      this.onPress,
      this.isModalPage = false,
      this.isPopUpPage = false,
      this.isPage      = false,
      this.isClose     = false,
      this.icon,
      this.height = 35,
      this.width = 35,
      this.margin,
      this.iconSize,
      this.elevation  = 0,
      this.iconColor  = Colors.black,
      this.backgroundColor  = Colors.white,
      this.scrollModalSheet = true,
      this.isPageTransition = false,
      this.transitionType   = 'scale',
      this.transitionDuration = 1100,
      this.hasSuperPress    = false,
      this.onSuperPress,
    }
  );

  @override
  Widget build(BuildContext context)
  {
    return Container
    (
      margin: margin,
      height: height,
      width: width,
      constraints: BoxConstraints
      (
        minWidth: height,
        minHeight: width,
      ),

      child: ElevatedButton
      (
        style: ElevatedButton.styleFrom
        (
          elevation: elevation,
          padding: EdgeInsets.all(0),
          primary: backgroundColor,
          shape: RoundedRectangleBorder
          (
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        
        onPressed: (!hasSuperPress) ? () 
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
        
        child: Icon
        (
          icon,
          color: iconColor,
          size: (iconSize != null) ? iconSize : Global().smallIcon,
        ),
      ),
    );
  }
}