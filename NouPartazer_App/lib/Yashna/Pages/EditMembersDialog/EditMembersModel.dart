import 'package:flutter/material.dart';

import 'package:noupartazer_app/Devashish/components/GetImage/EditMembersPhoto/MembersPhotoGetImage.dart';
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
                MembersPhotoGetImage(),
                  
                IconTextField
                (
                  keyboardType: TextInputType.name,
                  margin: EdgeInsets.all(0),
                  text: 'FULL NAME',
                  icon: Icons.perm_identity,
                ),
                
                IconTextField
                (
                  keyboardType: TextInputType.text,
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