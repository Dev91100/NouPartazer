import 'package:flutter/material.dart';

import 'package:noupartazer_app/Yashna/Pages/EditInfoAndContact/EditInfoModel.dart';

class EditContactModel extends EditInfoModel
{
  String title;
  String text1, text2, text3;
  IconData icon1, icon2, icon3;

  EditContactModel
  (
    {
      this.title = 'TEST',
      this.icon1 = Icons.language,
      this.icon2 = Icons.email_outlined,
      this.icon3 = Icons.phone_outlined,
      this.text1 = 'WEBSITE',
      this.text2 = 'EMAIL',
      this.text3 = 'PHONE',
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
    hasMultiline: false,
  );
}