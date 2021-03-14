import 'package:flutter/material.dart';

import 'package:NouPartazer_App/Atish/components/PageTitle.dart';
import 'package:NouPartazer_App/Koomalai/src/Settings/NGOSettings.dart';
import 'package:NouPartazer_App/Atish/components/SectionTitle.dart';

import 'package:NouPartazer_App/Devashish/components/FieldTitle.dart';
import 'package:NouPartazer_App/Devashish/components/TextFields.dart';
import 'package:NouPartazer_App/Devashish/components/TheOutlinedButtons.dart';
import 'package:NouPartazer_App/Atish/components/ButtonIconText.dart';

class NGOSecurity extends StatelessWidget
{
  final _oldPWController = TextEditingController();
  final _newPWController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar: PageTitle
      (
        text: 'SECURITY',
        hasBackButton: true,
        onPress: NGOSettings(),
      ),
      body: LayoutBuilder
      (
        builder: (ctx, constraints)
        {
          return Container
          (
            margin: EdgeInsets.only
            (
              right: 20,
              left: 20,
            ),
            child: Column
            (
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Column
                (
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                  [
                    SectionTitle
                    (
                      title: 'CHANGE PASSWORD',
                      top: 15,
                    ),
                    SizedBox(height: constraints.maxHeight * 0.03,),

                    Container
                    (
                      child: FieldTitle(fieldTitle: 'ENTER OLD PASSWORD', ),
                    ),

                    Container
                    (
                      child: TextFields(textFieldControllerName: _oldPWController, theprefixIcon: Icons.https_outlined, isPassword: true,),
                    ),

                    Container
                    (
                      child: FieldTitle(fieldTitle: 'CREATE NEW PASSWORD', ),
                    ),

                    Container
                    (
                      child: TextFields
                      (
                        textFieldControllerName: _newPWController, 
                        theprefixIcon: Icons.https_outlined, 
                        isPassword: true,
                      ),
                    ),

                    Container
                    (
                      child: TheOutlinedButtons
                      (
                        // press: ,
                        message: 'Change Password',
                      ),
                    )

                  ],
                ),
                
                Container
                (
                  margin: EdgeInsets.only
                  (
                    bottom: 20,
                  ),
                  child: ButtonIconText
                  (
                    text: 'Delete my account',
                    icon: Icons.delete_outlined,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    IconR: 212, IconG: 0, IconB: 0, IconO: 1,
                    TextR: 212, TextG: 0, TextB: 0, TextO: 1,
                    ButtonO: 0,
                    elevation: 0,
                  ),
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}
