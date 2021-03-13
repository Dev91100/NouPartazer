import 'package:flutter/material.dart';

import 'package:NouPartazer_App/Atish/components/PageTitle.dart';
import 'package:NouPartazer_App/Atish/Pages/HelpAndSupport/HelpAndSupportModel.dart';
import 'package:NouPartazer_App/Koomalai/src/BusinessSettings/BusinessSettings.dart';

class BusinessHelpAndSupport extends StatelessWidget
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
        onPress: BusinessSettings(),
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

