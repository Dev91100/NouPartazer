import 'package:flutter/material.dart';
import 'package:noupartazer_app/Devashish/Global.dart';

import 'package:noupartazer_app/Yashna/components/TwoButtons.dart';

class DonationEventModel
{
  bool _isSelected = false;
  final String text;
  final onPress;

  DonationEventModel
  (
    {
      this.text = 'This is a test!',
      this.onPress,
    }
  );

  StatefulBuilder displayDialog(BuildContext context)
  {
    var alertDialog = StatefulBuilder
    (
      builder: (context, setState)
      {
        return ButtonBarTheme
        (
          data: ButtonBarThemeData
          (
            alignment: MainAxisAlignment.center,
            //buttonPadding: EdgeInsets.all(20),
            mainAxisSize: MainAxisSize.min,
          ),
        
          child: AlertDialog
          (
            shape: RoundedRectangleBorder
            (
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),

            contentPadding: EdgeInsets.all(Global().smallPageMargin),

            content: Column
            (
              mainAxisSize: MainAxisSize.min,
              children:
              [
                Text
                (
                  'Please tick the checkbox to confirm.',
                  textAlign: TextAlign.center,
                  style: TextStyle
                  (
                    fontWeight: FontWeight.bold,
                    fontSize: Global().mediumText,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  )
                ),

                Container
                (
                  margin: EdgeInsets.only(top: Global().smallSpacing),
                  child: CheckboxListTile
                  (
                    title: Text
                    (
                      text,
                      textAlign: TextAlign.left,
                      style: TextStyle
                      (
                        fontSize: Global().tinyText,
                        color: Color.fromRGBO(41, 90, 245, 1),
                      )
                    ),

                    controlAffinity: ListTileControlAffinity.leading,
                    value: _isSelected,
                    onChanged: (bool value)
                    {
                      setState(() {
                        _isSelected = value;
                      });
                    },
                  ),
                ),

                Container
                (
                  child: TwoButtons
                  (
                    buttonText2: 'Confirm',
                    onPress: onPress,
                    isPage: true,
                  ),
                ),
              ],
            ),
          )
        );
      }
    );

    return alertDialog;
  }
}
