import 'package:flutter/material.dart';

import 'package:NouPartazer_App/Atish/components/PageTitle.dart';
import 'package:NouPartazer_App/Atish/Pages/SettingsPage/SettingsModel.dart';
import 'package:NouPartazer_App/Koomalai/src/NGO%20profile/NGOProfile.dart';
import 'package:NouPartazer_App/Yashna/Pages/ConfirmLogOut.dart';
import 'package:NouPartazer_App/Koomalai/src/Help%20and%20support/NGOHelpAndSupport.dart';
import 'package:NouPartazer_App/Koomalai/src/Security/Security.dart';

class NGOSettings extends StatelessWidget
{

  @override
  Widget build(BuildContext context)
  {
    var confirmLogoutDialog = ConfirmLogOut().displayDialog(context);

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
        security: true,
        securityPage: NGOSecurity(),
        helpAndSupport: true,
        helpAndSupportPage: NGOHelpAndSupport(),
        logOut: true,
        logPage: confirmLogoutDialog,
      ),
    );
  }
}

