import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/Pages/UserAccess/UserAcessPanel.dart';
import 'package:noupartazer_app/Yashna/components/TwoButtons.dart';

class ConfirmationModel
{
  String text;
  String buttonText1;
  String buttonText2;
  Color textColor;
  Color buttonColor;
  Color borderColor;
  bool hasTextField;

  ConfirmationModel
  (
    {
      this.text = 'This is a test',
      this.buttonText1 = 'Cancel',
      this.buttonText2 = 'Logout',
      this.textColor = const Color.fromRGBO(212, 0, 0, 1),
      this.buttonColor = const Color.fromRGBO(212, 0, 0, 0.1),
      this.borderColor = const Color.fromRGBO(212, 0, 0, 1),
      this.hasTextField = false,
    }
  );

  LayoutBuilder displayDialog(BuildContext context)
  {
    var alertDialog = LayoutBuilder
    (
      builder: (context, constraints)
      {
        return ButtonBarTheme
        (
          data: ButtonBarThemeData
          (
            alignment: MainAxisAlignment.center,
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
              left: 40,
              right: 40
            ),

            content: Column
            (
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:
              [
                Container
                (
                  margin: EdgeInsets.only(top: 10),
                  child: Text
                  (
                    text,
                    textAlign: TextAlign.center,
                    style: TextStyle
                    (
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
        
                (hasTextField) ?
                Container
                (
                  margin: EdgeInsets.only(top: 20),
                  child: TextFormField
                  (
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration
                    (
                      contentPadding: EdgeInsets.all(10),
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ) : Container(),

                Container
                (
                  margin: EdgeInsets.only(top: 20),
                  child: TwoButtons
                  (
                    onPress: UserAcessPanel(),
                    isPage: true,
                    buttonText2: buttonText2,
                    textColor: textColor,
                    buttonColor: buttonColor,
                    borderColor: borderColor,
                  )
                ),
              ],
            ),
          ),
        );
      }
    );

    return alertDialog;
  }
}
