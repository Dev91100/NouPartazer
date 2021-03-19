import 'package:flutter/cupertino.dart';

class PageTransitions extends PageRouteBuilder
{
  final Widget destinationPage;

  PageTransitions
  (
    {
      this.destinationPage,
    }
  )
  :super
  (
    transitionDuration: Duration(seconds: 1),
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
      // return FadeTransition
      (
        // opacity: animation,
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