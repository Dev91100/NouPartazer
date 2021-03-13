import 'package:flutter/material.dart';

import 'package:NouPartazer_App/Atish/components/ListTileModel.dart';


class SettingsModel extends StatelessWidget
{
  final bool notifications;
  final bool language;
  final bool security;
  final bool helpAndSupport;
  final bool logOut;

  final IconData logIcon;
  final String logText;
  final notificationsPage;
  final languagePage;
  final helpAndSupportPage;
  final securityPage;
  final logPage;

  SettingsModel
  (
    {
      this.notifications = false,
      this.language = false,
      this.security = false,
      this.helpAndSupport = false,
      this.logOut = true,
      this.logIcon = Icons.logout,
      this.logText = 'Log out',

      this.notificationsPage,
      this.languagePage,
      this.helpAndSupportPage,
      this.securityPage,
      this.logPage,
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
          (notifications) ?
          ListTileModel
          (
            leadingIcon: Icons.notifications_none_outlined,
            titleText: 'Notifications',
            subtitleText: 'Receive notifications from the app',
            trailingIcon: Icons.toggle_on,
            trailingR: 0, trailingG: 50, trailingB: 193, trailingO: 1,
            isPage: true,
            onPress: notificationsPage,
          ) : Container(),

          (language) ?
          ListTileModel
          (
            leadingIcon: Icons.g_translate,
            titleText: 'Language',
            subtitleText: 'English',
            trailingIcon: Icons.keyboard_arrow_right,
            isPopUpPage: true,
            onPress: languagePage,
          ) : Container(),

          (security) ?
          ListTileModel
          (
            leadingIcon: Icons.security_outlined,
            titleText: 'Security',
            subtitleText: 'Update password and account settings',
            trailingIcon: Icons.keyboard_arrow_right,
            isPage: true,
            onPress: securityPage,
          ) : Container(),

          (helpAndSupport) ?
          ListTileModel
          (
            leadingIcon: Icons.support_agent_outlined,
            titleText: 'Help & Support',
            subtitleText: 'For any questions, contact us',
            trailingIcon: Icons.keyboard_arrow_right,
            isPage: true,
            onPress: helpAndSupportPage,
          ) : Container(),

          ListTileModel
          (
            leadingIcon: logIcon,
            leadingR: 0, leadingG: 50, leadingB: 193, leadingO: 1, 
            titleText: logText,
            textR: 0, textG: 50, textB: 193, textO: 1, 
            trailingIcon: Icons.keyboard_arrow_right,
            trailingR: 0, trailingG: 50, trailingB: 193, trailingO: 1,
            isPopUpPage: (logOut) ? true : false, //If the button is logout then an alert dialog should popup
            isPage: (!logOut) ? true: false, // If the button is login then it should redirect to a page
            onPress: logPage,
          ),
        ],
      ),
    );
  }
}

