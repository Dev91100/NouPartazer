import 'package:flutter/material.dart';

import 'package:noupartazer_app/Yashna/components/TwoButtons.dart';
import 'package:noupartazer_app/Devashish/Global.dart';

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
              margin: EdgeInsets.only
              (
                top: 40,
                bottom: 40,
                left: 40,
                right: 40,
              ),
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
                        fontWeight: FontWeight.bold,
                        fontSize: Global().profileSectionTitle,
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
                        left: 10,
                        right: 10,
                      ),
                      margin: EdgeInsets.only(top: 15),
                      child: DropdownButton
                      (
                        hint: Text
                        (
                          "English",
                          style: TextStyle
                          (
                            color: Colors.black,
                            fontSize: Global().smallText,
                          ),
                        ),
                        dropdownColor: Colors.white,
                        icon: Icon(Icons.keyboard_arrow_down),
                        iconSize: 35,
                        isExpanded: true,

                        style: TextStyle
                        (
                          fontSize: Global().smallText,
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
                      margin: EdgeInsets.only(top: 15),
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