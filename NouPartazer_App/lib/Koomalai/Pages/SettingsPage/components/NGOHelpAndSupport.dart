import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/components/PageTitle.dart';
import 'package:noupartazer_app/Koomalai/Pages/SettingsPage/NGOSettings.dart';
import 'package:noupartazer_app/Atish/Pages/SettingsPage/HelpAndSupport/HelpAndSupportModel.dart';

class NGOHelpAndSupport extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar: PageTitle
      (
        text: 'HELP & SUPPORT',
        hasBackButton: true,
        onPress: NGOSettings(),
      ),

      body: HelpAndSupportModel
      (
        aboutUs: true,
        termsAndConditions: true,
        privacyPolicy: true,
        faq: true,
        contactUs: true,
      ),
    );
  }
}
