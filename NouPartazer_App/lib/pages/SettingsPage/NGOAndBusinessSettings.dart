import 'package:flutter/material.dart';

import 'package:noupartazer_app/components/PageTitle.dart';
import 'package:noupartazer_app/Pages/SettingsPage/SettingsModel.dart';
import 'package:noupartazer_app/Pages/Dialogs/ConfirmationDialog/ConfirmLogOut.dart';
import 'package:noupartazer_app/pages/SettingsPage/Security.dart';
import 'package:noupartazer_app/Pages/Dialogs/LanguageDialog/ConfirmLanguage.dart';

class NGOAndBusinessSettings extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    var confirmLogoutDialog = ConfirmLogOut().displayDialog(context);
    var confirmLanguageDialog = new ConfirmLanguage().displayBottomSheet(context);

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
        languagePage: confirmLanguageDialog,
        security: true,
        securityPage: Security(),
        aboutUs: true,
        logOut: true,
        logPage: confirmLogoutDialog,
      ),
    );
  }
}

