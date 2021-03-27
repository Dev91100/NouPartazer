import 'package:flutter/material.dart';

import 'package:noupartazer_app/Devashish/components/Transitions/AllTransitions.dart';
import 'package:noupartazer_app/Global.dart';

class OrgButton extends StatelessWidget
{
  final IconData icon;
  final String title;
  final Widget onPress;
  final String transitionType;
  final int transitionDuration;
  final double fontSize;
  final double iconSize;
  final BoxConstraints constraints;
  final EdgeInsets margin;

  OrgButton
  (
    {
      this.icon,
      this.title,
      this.onPress,
      this.transitionDuration = 1100,
      this.transitionType,
      this.fontSize,
      this.iconSize,
      this.constraints,
      this.margin,
    }
  );

  @override
  Widget build(BuildContext context)
  {
    return Container
    (
      margin: (margin != null) ? margin : EdgeInsets.only(top: Global().mediumSpacing), 
      height: constraints.maxHeight * 0.15,
      width: constraints.maxWidth * 0.8,

      constraints: BoxConstraints
      (
        minWidth: 300,
        minHeight: 110
      ),
      decoration: BoxDecoration
      (
        boxShadow:
        [
          BoxShadow
          (
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      
      child: TextButton
      (
        style: TextButton.styleFrom
        (
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder
          (
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        
        child: FittedBox
        (
          fit: BoxFit.contain,
          child: Column
          (
            children: 
            [
              Icon
              (
                icon,
                color: Color.fromRGBO(0, 50, 193, 1),
                size: (iconSize != null) ? fontSize: Global().mediumIcon, //55,
              ),
              Text
              (
                title,
                style: TextStyle
                (
                  color: Color.fromRGBO(0, 50, 193, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: (fontSize != null) ? fontSize: Global().largeText, //30,
                ),
              ),
            ],
          ),
        ),

        onPressed: ()
        {
          AllTransitions().getTransition
          (
            context: context,
            transitionType: transitionType,
            onPress: onPress, 
            transitionDuration: transitionDuration,
          );
        },
      ),
    );
  }
}
