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
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          title: Text(title),
          content: Text(body),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(DialogAction.abort),
              child: Text('Cancel',textAlign: TextAlign.center, style: TextStyle(decoration:TextDecoration.underline, color: Colors.grey.shade800,)),
            ),
            OutlinedButton(
              onPressed: () => Navigator.of(context).pop(DialogAction.yes),
              child: Text(
                'Confirm',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.yellow.shade800,
                ),
              ),
            ),
          ],
        );
      },
    );
    return (action != null) ? action : DialogAction.abort;
  }
}