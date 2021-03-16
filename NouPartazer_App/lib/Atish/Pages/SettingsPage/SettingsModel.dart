import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/components/ListTileModel.dart';


class SettingsModel extends StatelessWidget
{
  final bool notifications;
  final bool language;
  final bool security;
  final bool helpAndSupport;
  final bool logOut;

  final IconData logIcon;
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
            trailingColor: Color.fromRGBO(0, 50, 193, 1),
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
            leadingColor: Color.fromRGBO(0, 50, 193, 1),
            titleText: (logOut) ? 'Log out' : 'Log in',
            textColor: Color.fromRGBO(0, 50, 193, 1), 
            trailingIcon: Icons.keyboard_arrow_right,
            trailingColor: Color.fromRGBO(0, 50, 193, 1),
            isPopUpPage: (logOut) ? true : false, //If the button is logout then an alert dialog should popup
            isPage: (!logOut) ? true: false, // If the button is login then it should redirect to a page
            onPress: logPage,
          ),
        ],
      ),
    );
  }
}

