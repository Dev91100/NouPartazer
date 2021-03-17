import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/components/RoundIconButton.dart';
import 'package:noupartazer_app/Koomalai/Pages/SettingsPage/NGOAndBusinessSettings.dart';
import 'package:noupartazer_app/Yashna/components/IconTextField.dart';
import 'package:noupartazer_app/Yashna/components/TwoButtons.dart';

class EditMembersModel
{
  StatefulBuilder displayBottomSheet(BuildContext context)
  {
    var bottomSheet = StatefulBuilder
    (
      builder: (context, setState)
      {
        return Container
        (
          margin: EdgeInsets.only
          (
            top: 40,
            bottom: 40,
            left: 20,
            right: 20,
          ),
          child: SingleChildScrollView
          (
            child: Column
            (
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children:
              [
                Container
                (
                  margin: EdgeInsets.only(bottom: 30),
                  child: Stack
                  (
                    children:
                    [
                      CircleAvatar
                      (
                        radius: 60.0,
                        backgroundImage: AssetImage('./assets/JPEG/blue.jpg'),
                      ),

                      EditIconButton
                      (
                        onPress: NGOAndBusinessSettings(),
                        isPage: true,
                        icon: Icons.edit_outlined,
                        height: 40,
                        width: 40,
                        left: 0,
                        top: 0,
                        right: 0,
                        bottom: 0,
                        size: 30,
                      ),
                    ]
                  ),
                ),
                  
                IconTextField
                (
                  margin: EdgeInsets.all(0),
                  text: 'FULL NAME',
                  icon: Icons.perm_identity,
                ),
                
                IconTextField
                (
                  text: 'POSITION',
                  icon: Icons.title,
                ),

                Container
                (
                  margin: EdgeInsets.only(top: 25),
                  child: TwoButtons
                  (
                    buttonText2: 'Save',
                  ),
                ),
              ]
            ),
          ),
        );
      }
    );

    return bottomSheet;
  }
}