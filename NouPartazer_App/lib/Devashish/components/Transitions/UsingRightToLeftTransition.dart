import 'package:flutter/cupertino.dart';

class UsingRightToLeftTransition extends PageRouteBuilder
{
  final Widget destinationPage;
  final int customTransitionDuration;

  UsingRightToLeftTransition
  (
    {
      this.destinationPage,
      this.customTransitionDuration = 1100,
    }
  )
  :super
  (
    pageBuilder: (context, animation, secAnimation)
    => destinationPage,
    transitionDuration: Duration(milliseconds: customTransitionDuration),
    transitionsBuilder: 
    (
      context, 
      animation, 
      secAnimation, 
      child,
    )
    {
      animation = CurvedAnimation(parent: animation, curve: Curves.linearToEaseOut);
      
      return SlideTransition
      // return FadeTransition
      (
        // textDirection: TextDirection.ltr,
        child: child,
        position: Tween
        (
          begin: Offset(1.0, 0.0),
          end: Offset(0.0, 0.0),
        )
        .animate(animation),
        // opacity: animation,
        // scale: animation,
        // child: child,
        // alignment: Alignment.bottomCenter,
      );
    },
  );
}