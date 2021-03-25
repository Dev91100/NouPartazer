import 'package:flutter/material.dart';
import 'package:noupartazer_app/Devashish/components/Transitions/AllTransitions.dart';
import 'package:noupartazer_app/Koomalai/Pages/SettingsPage/NGOAndBusinessSettings.dart';

class SettingsButton extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return ElevatedButton
    (
      style: ElevatedButton.styleFrom
      (
        minimumSize: Size.fromRadius(25),
        elevation: 0,
        padding: EdgeInsets.all(0),
        primary: Colors.white,
        onPrimary: Colors.black,
        shape: RoundedRectangleBorder
        (
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      
      onPressed: ()
      {
        AllTransitions().getTransition
        (
          context: context,
          transitionType: 'rightToLeft',
          transitionDuration: 1100,
          onPress: NGOAndBusinessSettings(), 
        );
      },
      
      child: Icon
      (
        Icons.settings_outlined,
        color: Colors.black,
        size: 35,
      ),
    );
  }
}