import 'package:flutter/cupertino.dart';

class UsingScaleTransition extends PageRouteBuilder
{
  final destinationPage;
  final int theTransitionDuration;

  UsingScaleTransition
  (
    {
      this.destinationPage,
      this.theTransitionDuration = 1000,
    }
  )
  :super
  (
    transitionDuration: Duration(milliseconds: theTransitionDuration),
    transitionsBuilder: 
    (
      BuildContext context, 
      Animation<double> animation, 
      Animation<double> secAnimation, 
      Widget child,
    )
    {
      animation = CurvedAnimation(parent: animation, curve: Curves.ease);
      
      return ScaleTransition
      (
        scale: animation,
        child: child,
        alignment: Alignment.bottomCenter,
      );
    },
    pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secAnimation)
    {
      return destinationPage;
    }
  );
}