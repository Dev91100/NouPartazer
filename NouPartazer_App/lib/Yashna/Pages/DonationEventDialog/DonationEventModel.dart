import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/components/ButtonIconText.dart';
import 'package:noupartazer_app/Atish/components/SmallCustomButtonIconText.dart';

class DonationEventModel
{
  @required
  String text;
  bool _isSelected = false;

  DonationEventModel
  (
    {
      this.text = 'This is a test!'
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

            contentPadding: EdgeInsets.only
            (
              top: 20,
              bottom: 20,
              left: 20,
              right: 20
            ),

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
                    fontSize: 18,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  )
                ),

                Container
                (
                  margin: EdgeInsets.only(top: 15),
                  child: CheckboxListTile
                  (
                    title: Text
                    (
                      text,
                      textAlign: TextAlign.left,
                      style: TextStyle
                      (
                      fontWeight: FontWeight.bold,
                        fontSize: 15,
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
                  margin:EdgeInsets.only(top: 15),
                  child: Row
                  (
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: 
                    [
                      ButtonIconText
                      (
                        text: 'Cancel',
                        textDecoration: TextDecoration.underline,
                        textColor: Color.fromRGBO(102, 102, 102, 1),
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        buttonColor: Colors.transparent,
                        elevation: 0,
                        hasIcon: false,
                        isClose: true,
                      ),

                      SmallCustomButtonIconText
                      (
                        text: 'Confirm',
                        textColor: Color.fromRGBO(245, 197, 41, 1),
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        buttonColor: Color.fromRGBO(255, 248, 97, 0.2),
                        hasBorder: true,
                        borderColor: Color.fromRGBO(245, 197, 41, 1),
                        borderWidth: 2,
                        elevation: 0,
                        hasIcon: false,
                        isClose: true,
                      ),
                    ]
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
