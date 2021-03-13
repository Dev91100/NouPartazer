import 'package:flutter/material.dart';

import 'package:NouPartazer_App/Atish/components/PageTitle.dart';
import 'package:NouPartazer_App/Atish/Pages/SettingsPage/SettingsModel.dart';
import 'package:NouPartazer_App/Koomalai/src/NGO%20profile/NGOProfile.dart';
import 'package:NouPartazer_App/Yashna/Pages/ConfirmLogOut.dart';

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
        helpAndSupport: true,
        logOut: true,
        logPage: confirmLogoutDialog,
      ),
    );
  }
}

