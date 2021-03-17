import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/components/PageTitle.dart';
import 'package:noupartazer_app/Atish/Pages/SettingsPage/SettingsModel.dart';
import 'package:noupartazer_app/Yashna/Pages/ConfirmationDialog/ConfirmLogOut.dart';
import 'package:noupartazer_app/Koomalai/Pages/SettingsPage/components/IndividualHelpAndSupport.dart';
import 'package:noupartazer_app/Yashna/Pages/LanguageDialog/ConfirmLanguage.dart';

class BusinessSettings extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    var confirmLogOutDialog = ConfirmLogOut().displayDialog(context);
    var confirmLanguageDialog = new ConfirmLanguage().displayBottomSheet(context);

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
        languagePage: confirmLanguageDialog,
        security: true,
        helpAndSupport: true,
        helpAndSupportPage: IndividualHelpAndSupport(),
        logOut: true,
        logPage: confirmLogOutDialog,
      ),
    );
  }
}

