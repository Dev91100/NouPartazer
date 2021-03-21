import 'package:flutter/material.dart';

import 'UsingDownToUpTransition.dart';
import 'UsingLeftToRightTransition.dart';
import 'UsingRightToLeftTransition.dart';
import 'UsingScaleTransition.dart';
import 'UsingUpToDownTransition.dart';

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
        transition = UsingScaleTransition(destinationPage: onPress, customTransitionDuration: transitionDuration);
        break;
      case 'downToUp':
        transition = UsingDownToUpTransition(destinationPage: onPress, customTransitionDuration: transitionDuration);
        break;
      case 'upToDown':
        transition = UsingUpToDownTransition(destinationPage: onPress, customTransitionDuration: transitionDuration);
        break;
      case 'leftToRight':
        transition = UsingLeftToRightTransition(destinationPage: onPress, customTransitionDuration: transitionDuration);
        break;
      case 'rightToLeft':
        transition = UsingRightToLeftTransition(destinationPage: onPress, customTransitionDuration: transitionDuration);
        break;
      default:
      {
        transition = UsingLeftToRightTransition(destinationPage: onPress, customTransitionDuration: transitionDuration);
      }
      break;
    }

    return Navigator.of(context).push
    (
      transition
    );
  }
}