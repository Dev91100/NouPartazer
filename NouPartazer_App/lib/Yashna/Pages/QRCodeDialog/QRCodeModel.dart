import 'package:flutter/material.dart';

import 'package:noupartazer_app/Devashish/Global.dart';

class QRCodeModel
{
  String text;
  Color textColor;

  QRCodeModel
  (
    {
      this.text = 'This is a test',
      this.textColor = const Color.fromRGBO(212, 0, 0, 1),
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
                Text
                (
                  'QR CODE',
                  style: TextStyle
                  (
                    fontSize: Global().normalText,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Container
                (
                  margin: EdgeInsets.only(top: 15),
                  child: Text
                  (
                    text,
                    textAlign: TextAlign.center,
                    style: TextStyle
                    (
                      fontWeight: FontWeight.w600,
                      fontSize: Global().tinyText,
                    ),
                  ),
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
