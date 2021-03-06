import 'package:flutter/material.dart';

import 'package:noupartazer_app/components/PageTitle.dart';
import 'package:noupartazer_app/Pages/SettingsPage/HelpAndSupport/HelpAndSupportModel.dart';

class HelpAndSupport extends StatelessWidget
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

