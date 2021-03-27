import 'package:flutter/material.dart';

import 'package:noupartazer_app/Devashish/components/GetImage/EditMembersPhoto/MembersPhotoGetImage.dart';
import 'package:noupartazer_app/Yashna/components/IconTextField.dart';
import 'package:noupartazer_app/Yashna/components/TwoButtons.dart';
import 'package:noupartazer_app/Devashish/Global.dart';

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
          margin: EdgeInsets.symmetric
          (
            horizontal: Global().tinyPageMargin,
            vertical: Global().smallPageMargin,
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