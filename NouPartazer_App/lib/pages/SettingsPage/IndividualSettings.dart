import 'package:flutter/material.dart';

import 'package:noupartazer_app/components/PageTitle.dart';
import 'package:noupartazer_app/Pages/SettingsPage/SettingsModel.dart';
import 'package:noupartazer_app/Pages/UserAccess/UserAccessPanel.dart';
import 'package:noupartazer_app/pages/SettingsPage/HelpAndSupport/HelpAndSupport.dart';

class IndividualSettings extends StatelessWidget
{

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar: PageTitle
      (
        text: 'SETTINGS',
        hasBackButton: true,
      ),

      body: SettingsModel
      (
        notifications: true,
        language: true,
        aboutUs: true,
        logOut: false,
        logPage: UserAccessPanel(),
      ),
    );
  }
}

