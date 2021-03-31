import 'package:flutter/material.dart';

import 'package:noupartazer_app/components/ListTileModel.dart';
import 'package:noupartazer_app/Global.dart';


class SettingsModel extends StatefulWidget
{
  final bool notifications;
  final bool language;
  final bool security;
  final bool helpAndSupport;
  final bool aboutUs;
  final bool logOut;

  final notificationsPage;
  final languagePage;
  final helpAndSupportPage;
  final aboutUsPage;
  final securityPage;
  final logPage;

  SettingsModel
  (
    {
      this.notifications = false,
      this.language = false,
      this.security = false,
      this.helpAndSupport = false,
      this.aboutUs = false,
      this.logOut = true,

      this.notificationsPage,
      this.languagePage,
      this.helpAndSupportPage,
      this.aboutUsPage,
      this.securityPage,
      this.logPage,
    } 
  );

  @override
  _SettingsModelState createState() => _SettingsModelState();
}

class _SettingsModelState extends State<SettingsModel>
{
  bool isSwitched = false;
  
  void toggleSwitch(bool value)
  {  
    if(isSwitched == false)  
    {  
      setState(()
      {  
        isSwitched = true;  
      });  
    }  
    else  
    {  
      setState(()
      {  
        isSwitched = false;   
      }); 
    }  
  }  

  showSwitch()
  {
    return Switch
    (  
      onChanged: toggleSwitch,  
      value: isSwitched,  
      activeColor: Color.fromRGBO(0, 50, 193, 1),  
      activeTrackColor: Color.fromRGBO(116, 135, 255, 1),
      inactiveThumbColor: Color.fromRGBO(102, 102, 102, 1),  
      inactiveTrackColor: Color.fromRGBO(102, 102, 102, 0.5),  
    );
  }

  @override
  Widget build(BuildContext context)
  {
    aboutUsDialog()
    {
      return showAboutDialog
      (
        context: context,
        applicationName: 'NouPartazer',
        applicationLegalese: 'Thank you for downloading our app.',
        applicationIcon: Container
        (
          width: 50,
          height: 50,
          decoration: BoxDecoration
          (
            image: DecorationImage
            (
              image: AssetImage('./assets/PNG/NouPartazer AppIcon_Small.png'),
            ),
          ),
        ),
        applicationVersion: '1.0',
      );
    }
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
            trailingButton: showSwitch(),
            trailingColor: Color.fromRGBO(0, 50, 193, 1),
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

          (widget.aboutUs) ?
          ListTileModel
          (
            leadingIcon: Icons.info_outlined,
            titleText: 'About This App',
            subtitleText: 'Learn more about our app',
            trailingIcon: Icons.keyboard_arrow_right,
            onSuperPress: aboutUsDialog,
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

