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
  final TextInputType keyboardType1;
  final TextInputType keyboardType2;
  final TextInputType keyboardType3;
  final TextEditingController controller1;
  final TextEditingController controller2;
  final TextEditingController controller3;

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
    this.keyboardType1,
    this.keyboardType2,
    this.keyboardType3,
    this.controller1,
    this.controller2,
    this.controller3,
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
                      controller: controller1,
                      keyboardType: keyboardType1,
                      margin: EdgeInsets.all(0),
                      text: text1,
                      icon: icon1,
                    ),
                    
                    IconTextField
                    (
                      controller: controller2,
                      keyboardType: keyboardType2,
                      text: text2,
                      icon: icon2,
                    ),

                    IconTextField
                    (
                      controller: controller3,
                      keyboardType: keyboardType3,
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