import 'package:flutter/material.dart';
import 'package:noupartazer_app/Devashish/Global.dart';

import 'package:url_launcher/url_launcher.dart';

class ContactInfo extends StatelessWidget
{
  
  final String website;
  final String email;
  final String phoneNumber;
  final double fontSize;
  final IconData icon;
  final Color textColor;
  final Color iconColor;
  final double iconSize;
  final double iconRight;
  final EdgeInsets margin;
  // Future<void> _launched;

  Future<void> _launchInBrowser(String url) async       //Allows user to open a link in a separate browser
  {
    if (await canLaunch(url)) {
      print("can print");
      await launch
      (
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'header_key': 'header_value'},
      );
    } 
    else {
      print("Cannot Print");
      throw 'Could not launch $url';
    }
  }

  Future<void> _makePhoneCall(String url) async {       //Allows user to open a a phone number in the default caller app
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _sendEmail(String url) async {       //Allows user to send an email through default email app
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  ContactInfo
  (
    {
      this.website = '',
      this.email = '',
      this.phoneNumber = '',
      this.fontSize,
      this.textColor = const Color.fromRGBO(0, 50, 193, 1),
      this.iconColor = const Color.fromRGBO(102, 102, 102, 1),
      this.icon,
      this.iconSize,
      this.iconRight = 10,
      this.margin = const EdgeInsets.only(top: 20),
    }
  );

  Widget theWebsite()
  {
    return Container
    (
      child: new GestureDetector(
        onTap: () {
          _launchInBrowser("http://$website");
        },
        onLongPress: (){},
        child: new Text
        (
          website,
          style: TextStyle
          (
            fontSize: (fontSize != null) ? fontSize : Global().mediumText,
            color: textColor,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }

  Widget theEmail()
  {
    return Container
    (
      child: new GestureDetector(
        onTap: () {
          _sendEmail("mailto:$email");
        },
        onLongPress: (){},
        child: new Text
        (
          email,
          style: TextStyle
          (
            fontSize: (fontSize != null) ? fontSize : Global().mediumText,
            color: textColor,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }

  Widget thePhoneNumber()
  {
    return Container
    (
      child: new GestureDetector(
        onTap: () {
          _makePhoneCall("tel:$phoneNumber");
        },
        onLongPress: (){},
        child: new Text
        (
          phoneNumber,
          style: TextStyle
          (
            fontSize: (fontSize != null) ? fontSize : Global().mediumText,
            color: textColor,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }

checkTextType() 
{
  Widget result;

  if (website != '')
  {      
    result = theWebsite();
  }

  else if (email != '')
  {      
    result = theEmail();
  }

  else if (phoneNumber != '')
  {      
    result = thePhoneNumber();
  }

  return result;
}

  @override
  Widget build(BuildContext context)
  {
    return Container
    (
      margin: margin,
      child: Row
      (
        crossAxisAlignment: CrossAxisAlignment.center,
        children:
        [
          Container
          (
            margin: EdgeInsets.only
            (
              right: iconRight,
            ),
            child: Icon
            (
              icon,
              size: (iconSize != null) ? iconSize : Global().smallIcon,
              color: iconColor,
            ),
          ),
          
          checkTextType()
        ]
      ),
    );
  }
}