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
        transition = UsingScaleTransition(destinationPage: onPress, theTransitionDuration: 1);
        break;
      case 'downToUp':
        transition = UsingDownToUpTransition(destinationPage: onPress, theTransitionDuration: 1);
        break;
      case 'upToDown':
        transition = UsingUpToDownTransition(destinationPage: onPress, theTransitionDuration: 1);
        break;
      case 'leftToRight':
        transition = UsingLeftToRightTransition(destinationPage: onPress, theTransitionDuration: 1);
        break;
      case 'rightToLeft':
        transition = UsingRightToLeftTransition(destinationPage: onPress, theTransitionDuration: 1);
        break;
      default:
      {
        transition = UsingLeftToRightTransition(destinationPage: onPress, theTransitionDuration: 1);
      }
      break;
    }

    return Navigator.of(context).push
    (
      transition
    );
  }
}