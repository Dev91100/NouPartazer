import 'package:flutter/material.dart';
import 'package:noupartazer_app/Yashna/Pages/EditInfoAndContact/EditInfoModel.dart';

class BusinessEditName extends EditInfoModel
{
  String title;
  String text1, text2, text3;
  IconData icon1, icon2, icon3;

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
    hasMultiline: true,
  );
}