import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/components/Buttons/SmallCustomButtonIconText.dart';
import 'package:noupartazer_app/Devashish/Global.dart';

class StatementModel
{
  String text;
  final onPress;
  final bool isPageTransition;
  final String transitionType;

  StatementModel
  (
    {
      this.text = 'This is a test!',
      this.onPress,
      this.isPageTransition = false,
      this.transitionType = 'scale',
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

            contentPadding: EdgeInsets.all(Global().smallPageMargin),

            content: Column
            (
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:
              [
                Icon
                (
                  Icons.check_circle_outlined,
                  size: Global().largeIcon,
                  color: Color.fromRGBO(0, 163, 68, 1)
                ),

                Container
                (
                  margin: EdgeInsets.only(top: Global().smallSpacing),
                  child: Text
                  (
                    'Success',
                    style: TextStyle
                    (
                      fontSize: Global().largeText,
                      fontWeight: FontWeight.bold,
                    ),
                  ), 
                ),

                Container
                (
                  margin: EdgeInsets.only(top: Global().smallSpacing),
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
        
                Container
                (
                  width: constraints.maxWidth,
                  margin: EdgeInsets.only(top: Global().smallSpacing),
                  child: SmallCustomButtonIconText
                  (
                    text: 'Done',
                    onPress: onPress,
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
