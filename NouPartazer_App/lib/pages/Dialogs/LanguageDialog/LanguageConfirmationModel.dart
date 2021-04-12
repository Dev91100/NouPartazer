import 'package:flutter/material.dart';

import 'package:noupartazer_app/Global.dart';
import 'package:noupartazer_app/Pages/Dialogs/components/TwoButtons.dart';

//This file builds a customizable model for editing language choice related bottom sheets

class LanguageConfirmationModel
{
  final String text;
  final String buttonText2;

  const LanguageConfirmationModel
  (
    {
      this.text = 'This is a test',
      this.buttonText2 = 'Save',
    }
  );

  StatefulBuilder displayBottomSheet(BuildContext context)
  {
    String valueChoose;
    List listItem = ["English", "French"];

    var bottomSheet = StatefulBuilder
    (
      builder: (context, setState)
      {
        return LayoutBuilder
        (
          builder:(ctx, constraints)
          {
            return Container
            (
              margin: EdgeInsets.all(Global().smallPageMargin),
              child: SingleChildScrollView
              (
                child: Column
                (
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children:
                  [           
                    Text
                    (
                      text,
                      textAlign: TextAlign.center,
                      style: TextStyle
                      (
                        fontSize: Global().normalText,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                        
                    Container
                    (
                      
                      decoration: BoxDecoration
                      (
                        border: Border.all
                        (
                          color: Colors.black,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),

                      width: constraints.maxWidth,

                      padding: EdgeInsets.only
                      (
                        left: Global().smallSpacing,
                      ),
                      margin: EdgeInsets.only(top: Global().normalSpacing),
                      child: DropdownButton
                      (
                        hint: Text
                        (
                          "English",
                          style: TextStyle
                          (
                            color: Colors.black,
                            fontSize: Global().tinyText,
                          ),
                        ),
                        dropdownColor: Colors.white,
                        icon: Icon(Icons.keyboard_arrow_down),
                        iconSize: Global().normalIcon,
                        isExpanded: true,

                        style: TextStyle
                        (
                          fontSize: Global().tinyText,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),

                        underline: Container
                        (
                          color: Colors.transparent,
                        ),

                        value: valueChoose,
                        onChanged: (newValue)
                        {
                          setState(()
                          {
                            valueChoose = newValue;
                          });
                        },

                        items: listItem.map((valueItem)
                        {
                          return DropdownMenuItem
                          (
                            value: valueItem,
                            child: Text
                            (
                              valueItem,
                              style: TextStyle
                              (
                                color: Colors.black,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),

                    Container
                    (
                      child: TwoButtons
                      (
                        buttonText2: buttonText2,
                      ),
                    ),
                  ]
                ),
              ),
            );
          }
        );
      }
    );
    
    return bottomSheet;
  }
}