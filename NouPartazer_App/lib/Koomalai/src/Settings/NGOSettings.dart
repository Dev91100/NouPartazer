import 'package:flutter/material.dart';

import 'package:NouPartazer_App/Atish/components/PageTitle.dart';
import 'package:NouPartazer_App/Atish/Pages/SettingsPage/SettingsModel.dart';


class NGOSettings extends StatelessWidget
{

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar: PageTitle(text: 'ALL SETTINGS'),

      body: SettingsModel
      (
        notifications: true,
        language: true,
        security: true,
        helpAndSupport: true,
        log: true,
      ),
    );
  }
}

