import 'package:flutter/material.dart';

enum DialogAction { yes, abort }

class Dialogs {
  static Future<DialogAction> yesAbortDialog(
    BuildContext context,
    String title,
    String body,
  ) async {
    final action = await showDialog(
      context: context,
      barrierDismissible: false,
     builder: (BuildContext context) {
        return ButtonBarTheme
        (
          data: ButtonBarThemeData
          (
            alignment: MainAxisAlignment.center
          ),
          child: AlertDialog
          (
            shape: RoundedRectangleBorder
            (
              borderRadius: BorderRadius.circular(10),
            ),
          title: Text(title),
            content: Text
            (
              body,
              textAlign: TextAlign.center,
              style: TextStyle
              (

                color: Color.fromRGBO(0, 50, 193, 1),
              )
            ),
           actions: <Widget>[
            TextButton
              (
                onPressed: () => Navigator.of(context).pop(DialogAction.abort),
                child: Text
                (
                  'Cancel',
                  textAlign: TextAlign.center,
                  style: TextStyle
                  (
                    decoration:TextDecoration.underline,
                   color: Color.fromRGBO(102, 102, 102, 1),
                  )
                ),
              ),

            OutlinedButton
              (
                
                onPressed: () => Navigator.of(context).pop(DialogAction.yes),
                child: Text
                (
                  'Confirm',
                  textAlign: TextAlign.center,
                  style: TextStyle
                  (
                    color: Color.fromRGBO(245, 197, 41, 1),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
    return (action != null) ? action : DialogAction.abort;
  }
}