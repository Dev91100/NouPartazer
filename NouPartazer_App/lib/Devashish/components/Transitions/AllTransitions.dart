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
      int theTransitionDuration = 1100,
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
        transition = UsingScaleTransition(destinationPage: onPress, theTransitionDuration: theTransitionDuration);
        break;
      case 'downToUp':
        transition = UsingDownToUpTransition(destinationPage: onPress, theTransitionDuration: theTransitionDuration);
        break;
      case 'upToDown':
        transition = UsingUpToDownTransition(destinationPage: onPress, theTransitionDuration: theTransitionDuration);
        break;
      case 'leftToRight':
        transition = UsingLeftToRightTransition(destinationPage: onPress, theTransitionDuration: theTransitionDuration);
        break;
      case 'rightToLeft':
        transition = UsingRightToLeftTransition(destinationPage: onPress, theTransitionDuration: theTransitionDuration);
        break;
      default:
      {
        transition = UsingLeftToRightTransition(destinationPage: onPress, theTransitionDuration: theTransitionDuration);
      }
      break;
    }

    return Navigator.of(context).push
    (
      transition
    );
  }
}