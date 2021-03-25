import 'package:flutter/material.dart';

import 'DownToUp.dart';
import 'LeftToRight.dart';
import 'RightToLeft.dart';
import 'Scale.dart';
import 'UpToDown.dart';

class AllTransitions
{
  
  getTransition
  (
    {
      int transitionDuration = 1100,
      BuildContext context,
      String transitionType,
      var onPress,
    }
  )
  {
    var transition;

    switch(transitionType)
    {
      case 'scale':
        transition = Scale(destinationPage: onPress, customTransitionDuration: transitionDuration);
        break;
      case 'downToUp':
        transition = DownToUp(destinationPage: onPress, customTransitionDuration: transitionDuration);
        break;
      case 'upToDown':
        transition = UpToDown(destinationPage: onPress, customTransitionDuration: transitionDuration);
        break;
      case 'leftToRight':
        transition = LeftToRight(destinationPage: onPress, customTransitionDuration: transitionDuration);
        break;
      case 'rightToLeft':
        transition = RightToLeft(destinationPage: onPress, customTransitionDuration: transitionDuration);
        break;
      default:
      {
        transition = LeftToRight(destinationPage: onPress, customTransitionDuration: transitionDuration);
      }
      break;
    }

    return Navigator.of(context).push
    (
      transition
    );
  }
}