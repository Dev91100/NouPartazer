import 'package:flutter/material.dart';

import 'package:NouPartazer_App/Yashna/components/EditInfo.dart';

class EditContact extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return EditInfo
    (
      title: 'TEST',
      icon1: Icons.language,
      icon2: Icons.email_outlined,
      icon3: Icons.phone_outlined,
      text1: 'WEBSITE',
      text2: 'EMAIL',
      text3: 'PHONE',
    );
  }
}