import 'package:flutter/material.dart';

import 'package:noupartazer_app/Pages/Dialogs/EditInfoAndContactDialog/EditInfoModel.dart';

//This file allows a business to edit its name and description

class BusinessEditName extends EditInfoModel
{
  String title;
  String text1, text2, text3;
  IconData icon1, icon2, icon3;
  final TextInputType keyboardType1;
  final TextInputType keyboardType2;

  BusinessEditName
  (
    {
      this.title = 'TEST',
      this.icon1 = Icons.perm_identity,
      this.icon2 = Icons.title,
      this.icon3 = Icons.notes,
      this.text1 = 'BUSINESS NAME',
      this.text2 = 'SUBTITLE',
      this.text3 = 'DESCRIPTION',
      this.keyboardType1 = TextInputType.name,
      this.keyboardType2 = TextInputType.text,
    }
  ) : super
  (
    title: title,
    icon1: icon1,
    icon2: icon2,
    icon3: icon3,
    text1: text1,
    text2: text2,
    text3: text3,
    keyboardType1: keyboardType1,
    keyboardType2: keyboardType2,
    hasMultiline: true,
  );
}