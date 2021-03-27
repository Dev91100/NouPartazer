import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import 'package:noupartazer_app/Atish/components/ListTileModel.dart';
import 'package:noupartazer_app/Devashish/Global.dart';


class SettingsModel extends StatefulWidget
{
  final bool notifications;
  final bool language;
  final bool security;
  final bool helpAndSupport;
  final bool logOut;

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

      this.notificationsPage,
      this.languagePage,
      this.helpAndSupportPage,
      this.securityPage,
      this.logPage,
    } 
  );

  @override
  _SettingsModelState createState() => _SettingsModelState();
}

class _SettingsModelState extends State<SettingsModel>
{
  bool status = false;

  Widget switchToggle()
  {
    return Container
    (
      width: 80,
      child: FlutterSwitch
      (
        activeColor: Color.fromRGBO(0, 50, 193, 1),
        inactiveColor: Color.fromRGBO(102, 102, 102, 1),
        width: 65,
        height: 35,
        valueFontSize: 12,  // Override
        toggleSize: 20,
        value: status,
        borderRadius: 30.0,
        padding: 8.0,
        showOnOff: true,
        onToggle: (val)
        {
          setState(()
          {
            status = val;
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context)
  {
    return Container
    (
      margin: EdgeInsets.symmetric
      (
        horizontal: Global().smallPageMargin
      ),
      child: Column
      (
        children:
        [
          (widget.notifications) ?
          ListTileModel
          (
            leadingIcon: Icons.notifications_none_outlined,
            titleText: 'Notifications',
            subtitleText: 'Receive notifications from the app',
            hastrailingIcon: false,
            hasTrailingButton: true,
            trailingButton: switchToggle(),
            trailingColor: Color.fromRGBO(0, 50, 193, 1),
            isPopUpPage: true,
            onPress: widget.notificationsPage,
          ) : Container(),

          (widget.language) ?
          ListTileModel
          (
            leadingIcon: Icons.g_translate,
            titleText: 'Language',
            subtitleText: 'English',
            trailingIcon: Icons.keyboard_arrow_right,
            isModalPage: true,
            onPress: widget.languagePage,
          ) : Container(),

          (widget.security) ?
          ListTileModel
          (
            leadingIcon: Icons.security_outlined,
            titleText: 'Security',
            subtitleText: 'Update password and account settings',
            trailingIcon: Icons.keyboard_arrow_right,
            isPage: true,
            onPress: widget.securityPage,
          ) : Container(),

          (widget.helpAndSupport) ?
          ListTileModel
          (
            leadingIcon: Icons.support_agent_outlined,
            titleText: 'Help & Support',
            subtitleText: 'For any questions, contact us',
            trailingIcon: Icons.keyboard_arrow_right,
            isPage: true,
            onPress: widget.helpAndSupportPage,
          ) : Container(),

          ListTileModel
          (
            leadingIcon: (widget.logOut) ? Icons.logout : Icons.settings_power,
            leadingColor: (widget.logOut) ? Color.fromRGBO(212, 0, 0, 1) : Color.fromRGBO(0, 50, 193, 1),
            titleText: (widget.logOut) ? 'Log out' : 'Log in',
            textColor: (widget.logOut) ? Color.fromRGBO(212, 0, 0, 1) : Color.fromRGBO(0, 50, 193, 1), 
            trailingIcon: Icons.keyboard_arrow_right,
            trailingColor: (widget.logOut) ? Color.fromRGBO(212, 0, 0, 1) : Color.fromRGBO(0, 50, 193, 1),
            isPopUpPage: (widget.logOut) ? true : false, //If the button is logout then an alert dialog should popup
            isPage: (!widget.logOut) ? true: false, // If the button is login then it should redirect to a page
            onPress: widget.logPage,
          ),
        ],
      ),
    );
  }
}

