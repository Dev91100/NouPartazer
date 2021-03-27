import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/components/Text/SmallText.dart';
import 'package:noupartazer_app/Devashish/Global.dart';
import 'package:noupartazer_app/Yashna/components/TwoButtons.dart';

class ConfirmationModel
{
  final String text;
  final String buttonText1;
  final String buttonText2;
  final Color textColor;
  final Color buttonColor;
  final Color borderColor;
  final bool hasTextField;
  final onPress;

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
      this.onPress
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

            contentPadding: EdgeInsets.all(Global().smallPageMargin,),

            content: Column
            (
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:
              [
                Container
                (
                  margin: EdgeInsets.only(top: Global().smallSpacing),
                  child: SmallText
                  (
                    text: text,
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w500,
                  ),
                ),
        
                (hasTextField) ?
                Container
                (
                  margin: EdgeInsets.only(top: Global().smallSpacing),
                  child: TextFormField
                  (
                    obscureText: true,
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
                  child: TwoButtons
                  (
                    onPress: onPress,
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
