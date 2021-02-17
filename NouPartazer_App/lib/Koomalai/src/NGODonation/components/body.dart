import 'dart:convert';
/*import 'dart:js';*/

import 'package:NouPartazer_App/Koomalai/Screens/Signin/components/social_icon.dart';
import 'package:NouPartazer_App/Koomalai/components/ChangePassword.dart';
import 'package:NouPartazer_App/Koomalai/components/CreateNewPassword.dart';
import 'package:NouPartazer_App/Koomalai/src/AlertDialogue/AlertDialogue.dart';
import 'package:NouPartazer_App/Koomalai/src/BusinessSecurity/Security.dart';
import 'package:NouPartazer_App/Koomalai/src/BusinessSettings/Setting.dart';
import 'package:NouPartazer_App/Koomalai/src/Settings/Setting.dart';
import 'package:flutter/material.dart';
/*import 'package:flutter_auth/Screens/Login/components/background.dart';*/
import 'package:NouPartazer_App/Koomalai/Screens/Login/login_screen.dart';
import 'package:NouPartazer_App/Koomalai/Screens/Signup/signup_screen.dart';
import 'package:NouPartazer_App/Koomalai/components/already_have_an_account_acheck.dart';
import 'package:NouPartazer_App/Koomalai/components/rounded_button.dart';
import 'package:NouPartazer_App/Koomalai/components/rounded_input.dart';
import 'package:NouPartazer_App/Koomalai/components/rounded_input_field.dart';
import 'package:NouPartazer_App/Koomalai/components/rounded_password_field.dart';
import 'package:NouPartazer_App/Koomalai/components/text_field.dart';
import 'package:NouPartazer_App/Koomalai/src/screens/mainScreen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;


import '../NGO donation.dart';
import 'background.dart';

/*import '../Business.dart';*/

class Body extends StatelessWidget {

  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top:35.0),
              child: Text(
                "DONATIONS",
                style: TextStyle(
                  fontFamily: "risotto",
                  fontSize: 22.0,
                  //fontWeight: FontWeight.bold,
                ),
              ),
            ),



            /* SwitchListTile(

                        /* Icon(Icons.notifications_none_outlined),*/
                             activeColor: Colors.blueAccent,
                            contentPadding: const EdgeInsets.all(0),
                            title: Text('Notifications'),
                            subtitle: Text('Receive notifications from the app'),

                            /*switchValue: value,*/
                            value: true,
                            onChanged: (val) {},
                      ),*/

            SizedBox(
              height: 25.0,
            ),

            ListTile(
              /*leading: Icon(
                          Icons.notifications_none_outlined,
                          color: Colors.black87,
                          size: 30.0,
                        ),*/
                leading: Image(
                  image: AssetImage('assets/PNG/jumbo profile.png'),
                  height: 200.0,
                ),
                title: Text("Grocery donation" ,
                  style: TextStyle(
                    fontFamily: "risotto",
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),


                subtitle:
                Row(
                    children: <Widget>[
                      Icon(
                        Icons.calendar_today,
                        color: Colors.blue,
                      ),

                      Text('19/01/2021',
                        style: TextStyle(
                          fontFamily: "risotto",
                          /*fontSize: 13.0,*/
                        ),

                      ),

                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.blue,
                      ),

                      Text('Jumbo Supermarket',
                        style: TextStyle(
                          fontFamily: "risotto",
                          /*fontSize: 13.0,*/
                        ),

                      ),

                    ]
                ),
                /*Text('First food project in Mauritius',
                          style: TextStyle(
                            fontFamily: "risotto",
                            fontSize: 13.0,
                          ),

                        ),*/

                trailing:
                Row(
                    children: <Widget>[
                      Icon(
                        Icons.no_food_outlined,
                        color: Colors.greenAccent,
                      ),

                      Icon(
                        Icons.fastfood_outlined,
                        color: Colors.red,
                      ),
                    ]
                ),

                onTap: () {
                  /*Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {

                              },
                            ),
                          );*/
                }

            ),




          ],
        ),
      ),
    );
  }
}





