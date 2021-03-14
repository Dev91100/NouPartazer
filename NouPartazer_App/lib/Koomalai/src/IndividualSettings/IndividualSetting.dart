import 'package:flutter/material.dart';

import 'package:NouPartazer_App/Atish/components/PageTitle.dart';
import 'package:NouPartazer_App/Atish/Pages/SettingsPage/SettingsModel.dart';
import 'package:NouPartazer_App/Koomalai/src/NGO%20profile/NGOProfile.dart';
import 'package:NouPartazer_App/Koomalai/Screens/Login/login_screen.dart';
import 'package:NouPartazer_App/Koomalai/src/Individual%20Help%20and%20support/IndividualhelpAndSupport.dart';

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
        onPress: NGOProfile(),
      ),

      body: SettingsModel
      (
        notifications: true,
        language: true,
        helpAndSupport: true,
        helpAndSupportPage: IndividualHelpAndSupport(),
        logOut: false,
        logIcon: Icons.settings_power,
        logPage: LoginScreen(),
      ),
    );
  }
}

