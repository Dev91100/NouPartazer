import 'package:flutter/material.dart';

import 'package:noupartazer_app/Yashna/Pages/EditInfoAndContactDialog/EditInfoModel.dart';

class EditContact extends EditInfoModel
{
  String title;
  String text1, text2, text3;
  IconData icon1, icon2, icon3;
  final TextInputType keyboardType1;
  final TextInputType keyboardType2;
  final TextInputType keyboardType3;

  EditContact
  (
    {
      this.title = 'TEST',
      this.icon1 = Icons.language,
      this.icon2 = Icons.email_outlined,
      this.icon3 = Icons.phone_outlined,
      this.text1 = 'WEBSITE',
      this.text2 = 'EMAIL',
      this.text3 = 'PHONE',
      this.keyboardType1 = TextInputType.url,
      this.keyboardType2 = TextInputType.emailAddress,
      this.keyboardType3 = TextInputType.number,
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
    keyboardType3: keyboardType3,
    hasMultiline: false,
  );
}