import 'package:flutter/material.dart';

import 'package:NouPartazer_App/Atish/components/PageTitle.dart';
import 'package:NouPartazer_App/Koomalai/src/Settings/NGOSettings.dart';
import 'package:NouPartazer_App/Atish/components/SectionTitle.dart';

import 'package:NouPartazer_App/Devashish/components/FieldTitle.dart';
import 'package:NouPartazer_App/Devashish/components/TextFields.dart';
import 'package:NouPartazer_App/Atish/components/ButtonIconText.dart';

class NGOSecurity extends StatelessWidget
{
  final _storyTitleController = TextEditingController();

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
                  children:
                  [
                    SectionTitle
                    (
                      title: 'CHANGE PASSWORD',
                      top: 15,
                    ),

                    Container
                    (
                      child: FieldTitle(fieldTitle: 'Title'),
                    ),

                    Container
                    (
                      child: TextFields(textFieldControllerName: _storyTitleController, ),
                    ),
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
