import 'package:flutter/cupertino.dart';

class UsingRightToLeftTransition extends PageRouteBuilder
{
  final Widget destinationPage;
  final int theTransitionDuration;

  UsingRightToLeftTransition
  (
    {
      this.destinationPage,
      this.theTransitionDuration = 1,
    }
  )
  :super
  (
    pageBuilder: (context, animation, secAnimation)
    => destinationPage,
    transitionDuration: Duration(seconds: theTransitionDuration),
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
        child: child,
        position: Tween
        (
          begin: Offset(1.0, 0.0),
          end: Offset.zero,
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