import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/components/PageTitle.dart';
import 'package:noupartazer_app/Atish/Pages/SettingsPage/SettingsModel.dart';
import 'package:noupartazer_app/Koomalai/Pages/SignIn/SignIn.dart';
import 'package:noupartazer_app/Koomalai/Pages/SettingsPage/HelpAndSupport.dart';

class IndividualSettings extends StatelessWidget
{

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar: PageTitle
      (
        text: 'ALL SETTINGS',
        hasBackButton: true,
      ),

      body: SettingsModel
      (
        notifications: true,
        language: true,
        helpAndSupport: true,
        helpAndSupportPage: HelpAndSupport(),
        logOut: false,
        logPage: SignIn(),
      ),
    );
  }
}

