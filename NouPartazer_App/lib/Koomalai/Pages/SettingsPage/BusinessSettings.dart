import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/components/PageTitle.dart';
import 'package:noupartazer_app/Atish/Pages/SettingsPage/SettingsModel.dart';
import 'package:noupartazer_app/Koomalai/Pages/ProfilePage/NGOProfile.dart';
import 'package:noupartazer_app/Yashna/Pages/ConfirmationDialog/ConfirmLogOut.dart';
import 'package:noupartazer_app/Koomalai/Pages/SettingsPage/components/IndividualHelpAndSupport.dart';
import 'package:noupartazer_app/Yashna/Pages/LanguageConfirmation.dart';

class BusinessSettings extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    var confirmLogOutDialog = ConfirmLogOut().displayDialog(context);
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
        helpAndSupport: true,
        helpAndSupportPage: IndividualHelpAndSupport(),
        logOut: true,
        logPage: confirmLogOutDialog,
      ),
    );
  }
}

