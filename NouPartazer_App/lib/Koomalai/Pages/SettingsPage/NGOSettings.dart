import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/components/PageTitle.dart';
import 'package:noupartazer_app/Atish/Pages/SettingsPage/SettingsModel.dart';
import 'package:noupartazer_app/Koomalai/Pages/ProfilePage/NGOProfile.dart';
import 'package:noupartazer_app/Yashna/Pages/ConfirmationDialog/ConfirmLogOut.dart';
import 'package:noupartazer_app/Koomalai/Pages/SettingsPage/components/NGOHelpAndSupport.dart';
import 'package:noupartazer_app/Koomalai/Pages/SettingsPage/components/Security.dart';
import 'package:noupartazer_app/Yashna/Pages/LanguageConfirmation.dart';

class NGOSettings extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    var confirmLogoutDialog = ConfirmLogOut().displayDialog(context);
    var languageConfirmationDialog = new LanguageConfirmation().displayBottomSheet(context);

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
        languagePage: languageConfirmationDialog,
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

