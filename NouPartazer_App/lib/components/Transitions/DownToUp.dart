import 'package:flutter/cupertino.dart';

class DownToUp extends PageRouteBuilder
{
  final Widget destinationPage;
  final int customTransitionDuration;

  DownToUp
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
      animation = CurvedAnimation(parent: animation, curve: Curves.linearToEaseOut);
      
      return SlideTransition
      // return FadeTransition
      (
        child: child,
        position: Tween
        (
          begin: Offset(0.0, 1.0),
          end: Offset(0.0, 0.0)
        )
        .animate(animation),
        // opacity: animation,
        // scale: animation,
        // child: child,
        // alignment: Alignment.bottomCenter,
      );
    },
    pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secAnimation)
    {
      return destinationPage;
    }
  );
}