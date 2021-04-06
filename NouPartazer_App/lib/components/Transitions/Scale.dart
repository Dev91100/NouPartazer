import 'package:flutter/cupertino.dart';

class Scale extends PageRouteBuilder
{
  final destinationPage;
  final int customTransitionDuration;

  Scale
  (
    {
      this.destinationPage,
      this.customTransitionDuration = 1000,
    }
  )
  :super
  (
    transitionDuration: Duration(milliseconds: customTransitionDuration),
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