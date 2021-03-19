import 'package:flutter/material.dart';

import 'package:noupartazer_app/Yashna/components/IconTextField.dart';
import 'package:noupartazer_app/Yashna/components/TwoButtons.dart';

class EditInfoModel
{
  final String title;
  final String text1;
  final String text2;
  final String text3;
  final IconData icon1;
  final IconData icon2;
  final IconData icon3;
  final bool hasMultiline;

  const EditInfoModel
  ({
    @required this.title,
    @required this.text1,
    @required this.text2,
    @required this.text3,
    @required this.icon1,
    @required this.icon2,
    @required this.icon3,
    this.hasMultiline = false,
  });

  StatefulBuilder displayBottomSheet(BuildContext context)
  {
    final _formKey = GlobalKey<FormState>();
    
    var bottomSheet = StatefulBuilder
    (
      builder: (context, setState)
      {
        return LayoutBuilder
        (
          builder: (context, constraints)
          {
            return SingleChildScrollView
            (
              padding: EdgeInsets.only
              (
                top: 40,
                bottom: 20,
                left: 20,
                right: 20
              ),
              child: Form
              (
                key: _formKey,

                child: Column
                (
                  mainAxisSize: MainAxisSize.min,
                  children:
                  [
                    IconTextField
                    (
                      margin: EdgeInsets.all(0),
                      text: text1,
                      icon: icon1,
                    ),
                    
                    IconTextField
                    (
                      text: text2,
                      icon: icon2,
                    ),

                    IconTextField
                    (
                      text: text3,
                      icon: icon3,
                      hasMultiline: hasMultiline,
                    ),

                    Container
                    (
                      margin: EdgeInsets.only
                      (
                        top: 20,
                        bottom: 15
                      ),
                      
                      child: TwoButtons()
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