import 'package:flutter/material.dart';

import 'package:NouPartazer_App/Yashna/components/EditInfo.dart';

class BusinessEditName extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return EditInfo
    (
      title: 'TEST',
      icon1: Icons.perm_identity,
      icon2: Icons.title,
      icon3: Icons.notes,
      text1: 'BUSINESS NAME',
      text2: 'SUBTITLE',
      text3: 'DESCRIPTION',
    );
  }
}