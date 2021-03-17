import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/components/PageTitle.dart';
import 'package:noupartazer_app/Atish/Pages/SettingsPage/SettingsModel.dart';
import 'package:noupartazer_app/Yashna/Pages/ConfirmationDialog/ConfirmLogOut.dart';
import 'package:noupartazer_app/Koomalai/Pages/SettingsPage/components/HelpAndSupport.dart';
import 'package:noupartazer_app/Koomalai/Pages/SettingsPage/components/Security.dart';
import 'package:noupartazer_app/Yashna/Pages/LanguageDialog/ConfirmLanguage.dart';
import 'package:noupartazer_app/Yashna/Pages/QRcode/QrCode.dart';

class NGOAndBusinessSettings extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    var confirmLogoutDialog = ConfirmLogOut().displayDialog(context);
    var confirmLanguageDialog = new ConfirmLanguage().displayBottomSheet(context);
    var qrcodeDialog = QRCode().displayDialog(context);

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
        notificationsPage: qrcodeDialog,
        language: true,
        languagePage: confirmLanguageDialog,
        security: true,
        securityPage: Security(),
        helpAndSupport: true,
        helpAndSupportPage: HelpAndSupport(),
        logOut: true,
        logPage: confirmLogoutDialog,
      ),
    );
  }
}

