import 'package:flutter/material.dart';

import 'package:NouPartazer_App/Atish/components/SectionTitle.dart';
import 'package:NouPartazer_App/Atish/components/ButtonIconText.dart';

class Statement
{
  String text;

  Statement
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
            mainAxisSize: MainAxisSize.min,
          ),
        
          child: AlertDialog
          (
            actions:
            [
              Column
              (
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
                      'Changes Updated!',
                      style: TextStyle
                      (
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ),

                  ButtonIconText
                  (
                    text: 'Done',
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    elevation: 2,
                    hasIcon: false,
                    isClose: true,
                  ),
                ],
              ),
            ],
          ),
        );
      }
    );

    return alertDialog;
  }
}
