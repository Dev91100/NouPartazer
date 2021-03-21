import 'package:flutter/material.dart';

import 'package:noupartazer_app/Devashish/components/Transitions/AllTransitions.dart';

class EditIconButton extends StatelessWidget
{
  final onPress;
  final bool isModalPage;
  final bool isPopUpPage;
  final bool isPage;
  final bool isClose;
  final IconData icon;
  final double height, width;
  final double left, top, right, bottom;
  final double size;
  final double elevation;
  final Color iconColor;
  final bool scrollModalSheet;
  final bool isPageTransition;
  final String transitionType;
  final int theTransitionDuration;
  final bool hasSuperPress;
  final VoidCallback onSuperPress;

  EditIconButton
  (
    {
      this.onPress,
      this.isModalPage = false,
      this.isPopUpPage = false,
      this.isPage      = false,
      this.isClose     = false,
      this.icon,
      this.height,
      this.width,
      this.left,
      this.top,
      this.right,
      this.bottom,
      this.size,
      this.elevation = 2,
      this.iconColor = const Color.fromRGBO(102, 102, 102, 1),
      this.scrollModalSheet = true,
      this.isPageTransition = false,
      this.transitionType = 'scale',
      this.theTransitionDuration = 1100,
      this.hasSuperPress = false,
      this.onSuperPress,
    }
  );

  @override
  Widget build(BuildContext context)
  {
    return Container
    (
      margin: EdgeInsets.only
      (
        left: left,
        top: top,
        right: right,
        bottom: bottom
      ),
      height: height,
      width: width,
      constraints: BoxConstraints
      (
        minWidth: height,
        minHeight: width,
      ),
      decoration: BoxDecoration
      (
        color: Colors.white,
        shape: BoxShape.circle,
      ),

      child: ElevatedButton
      (
        style: ElevatedButton.styleFrom
        (
          elevation: elevation,
          padding: EdgeInsets.all(0),
          primary: Colors.white,
          onPrimary: Colors.black,
          shape: RoundedRectangleBorder
          (
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        
        // If isModal is true then the page is a popup and the first function is executed else
        // the second function is executed
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
              theTransitionDuration: theTransitionDuration,
              onPress: onPress, 
            );
          }
        } : () => onSuperPress(),
        
        child: Icon
        (
          icon,
          color: iconColor,
          size: size,
        ),
      ),
    );
  }
}