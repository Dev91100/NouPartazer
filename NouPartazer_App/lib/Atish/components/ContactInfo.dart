import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactInfo extends StatelessWidget
{
  
  final String website;
  final String email;
  final String phoneNumber;
  @required
  final double fontSize;
  @required
  final IconData icon;
  @required
  final double top;
  @required
  final int R, G, B;
  @required
  final double O;

  Future<void> _launched;

  Future<void> _launchInBrowser(String url) async 
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

  ContactInfo
  (
    {
      this.website,
      this.email,
      this.phoneNumber,
      this.fontSize = 20,
      this.R = 0,
      this.G = 50,
      this.B = 193,
      this.O = 1,
      this.top = 15,
      this.icon,
    }
  );

  Widget theWebsite()
  {
    return Container
    (
      // child: Text
      // (
      //   website,
      //   style: TextStyle
      //   (
          // fontSize: fontSize,
          // color: Color.fromRGBO(R, G, B, O),
          // decoration: TextDecoration.underline,
      //   ),
      // ),

      // child: TextButton
      // (
      //   onPressed: ()
      //   {
      //     _launchInBrowser(website);
      //   },
      //   child: Text
      //   (
      //     website, 
          // style: TextStyle
          // (
          //   fontSize: fontSize,
          //   color: Color.fromRGBO(R, G, B, O),
          //   decoration: TextDecoration.underline,
          // ),
      //   ),
        
      // ),

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
            fontSize: fontSize,
            color: Color.fromRGBO(R, G, B, O),
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
      child: Text
      (
        email,
        style: TextStyle
        (
          fontSize: fontSize,
          color: Color.fromRGBO(R, G, B, O),
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }

  Widget thePhoneNumber()
  {
    return Container
    (
      child: Text
      (
        phoneNumber,
        style: TextStyle
        (
          fontSize: fontSize,
          color: Color.fromRGBO(R, G, B, O),
          decoration: TextDecoration.underline,
        ),
        
      ),
    );
  }

CheckTextType() 
{
  if (website != null)
  {      
    return theWebsite();
  }

  if (email != null)
  {      
    return theEmail();
  }

  if (phoneNumber != null)
  {      
    return thePhoneNumber();
  }
}

  @override
  Widget build(BuildContext context)
  {
    return Container(
      margin: EdgeInsets.only
      (
        top: top,
        left: 20,
        right: 20
      ),
      child: Row
      (
        crossAxisAlignment: CrossAxisAlignment.center,
        children:
        [
          Container
          (
            margin: EdgeInsets.only
            (
              right: 10
            ),
            child: Icon
            (
              icon,
              size: 30,
              color: Color.fromRGBO(102, 102, 102, 1)
            ),
          ),
          
          CheckTextType()
        ]
      ),
    );
  }
}