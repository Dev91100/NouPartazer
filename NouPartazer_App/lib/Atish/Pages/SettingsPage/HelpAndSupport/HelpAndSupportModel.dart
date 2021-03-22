import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/components/ListTileModel.dart';
import 'package:noupartazer_app/Devashish/Global.dart';


class HelpAndSupportModel extends StatelessWidget
{
  final bool aboutUs;
  final bool termsAndConditions;
  final bool privacyPolicy;
  final bool faq;
  final bool contactUs;

  final aboutUsPage;
  final termsAndConditionsPage;
  final privacyPolicyPage;
  final faqPage;
  final contactUsPage;

  HelpAndSupportModel
  (
    {
      this.aboutUs            = false,
      this.termsAndConditions = false,
      this.privacyPolicy      = false,
      this.faq                = false,
      this.contactUs          = false,

      this.aboutUsPage,
      this.termsAndConditionsPage,
      this.privacyPolicyPage,
      this.faqPage,
      this.contactUsPage,
    } 
  );

  @override
  Widget build(BuildContext context)
  {
    return Container
    (
      margin:EdgeInsets.only
      (
        left: 20,
        right: 20
      ),
      child: Column
      (
        children:
        [
          (aboutUs) ?
          ListTileModel
          (
            leadingIcon: Icons.supervised_user_circle_outlined,
            titleText: 'About Us',
            titleSize: Global().settingsTitle,
            subtitleText: 'Learn more about NouPartazer',
            subTitleSize: Global().settingsSubTitle,
            trailingIcon: Icons.keyboard_arrow_right,
            iconSize: Global().settingsIcon,
            isPage: true,
            onPress: aboutUsPage,
          ) : Container(),

          (termsAndConditions) ?
          ListTileModel
          (
            leadingIcon: Icons.assignment_outlined,
            titleText: 'Terms & Conditions',
            titleSize: Global().settingsTitle,
            subtitleText: 'Learn more about NouPartazer',
            subTitleSize: Global().settingsSubTitle,
            trailingIcon: Icons.keyboard_arrow_right,
            iconSize: Global().settingsIcon,
            isPopUpPage: true,
            onPress: termsAndConditionsPage,
          ) : Container(),

          (privacyPolicy) ?
          ListTileModel
          (
            leadingIcon: Icons.privacy_tip_outlined,
            titleText: 'Privacy Policy',
            titleSize: Global().settingsTitle,
            subtitleText: 'Learn more about NouPartazer',
            subTitleSize: Global().settingsSubTitle,
            trailingIcon: Icons.keyboard_arrow_right,
            iconSize: Global().settingsIcon,
            isPage: true,
            onPress: privacyPolicyPage,
          ) : Container(),

          (faq) ?
          ListTileModel
          (
            leadingIcon: Icons.question_answer_outlined,
            titleText: 'FAQ',
            titleSize: Global().settingsTitle,
            subtitleText: 'Learn more about NouPartazer',
            subTitleSize: Global().settingsSubTitle,
            trailingIcon: Icons.keyboard_arrow_right,
            iconSize: Global().settingsIcon,
            isPage: true,
            onPress: faqPage,
          ) : Container(),

          (contactUs) ?
          ListTileModel
          (
            leadingIcon: Icons.perm_phone_msg_outlined,
            titleText: 'Contact Us',
            titleSize: Global().settingsTitle,
            subtitleText: 'Learn more about NouPartazer',
            subTitleSize: Global().settingsSubTitle,
            trailingIcon: Icons.keyboard_arrow_right,
            iconSize: Global().settingsIcon,
            isPage: true,
            onPress: contactUsPage,
          ) : Container(),
        ],
      ),
    );
  }
}

