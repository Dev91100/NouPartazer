import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/components/Buttons/SmallCustomButtonIconText.dart';
import 'package:noupartazer_app/Atish/components/SectionTitle.dart';

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
                Icon
                (
                  Icons.check_circle_outlined,
                  size: 120,
                  color: Color.fromRGBO(0, 163, 68, 1)
                ),

                Container
                (
                  margin: EdgeInsets.only(top: 10),
                  child: SectionTitle
                  (
                    title: 'Success',
                    fontSize: 25,
                    align: Alignment.center,
                    left: 0,
                  ),
                ),

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
        
                Container
                (
                  width: constraints.maxWidth,
                  margin: EdgeInsets.only(top: 15),
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
