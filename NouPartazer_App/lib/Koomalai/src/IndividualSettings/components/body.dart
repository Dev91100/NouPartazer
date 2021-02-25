
import 'package:NouPartazer_App/Koomalai/Screens/Signup/signup_screen.dart';
/*import 'dart:js';*/

import 'package:flutter/material.dart';

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
                  /*Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),*/

                  /*Image(
              image: AssetImage('assets/images/image.jpg'),
              height: size.height * 0.475,

            ),*/
                  /*SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),*/

                  /*Align(
              alignment: Alignment.topRight,
              child: FlatButton(
                child: Text("Skip",style: TextStyle(color: Colors.white, fontSize: 20.0),),

                onPressed: () {},
                color:Colors.black26,
                minWidth: size.width * 0.5,
              ),


            ),*/

                  /*Align(
              alignment: Alignment.bottomRight,
              child: FlatButton(
                child: Text("Sign Up",style: TextStyle(color: Colors.white, fontSize: 20.0),),

                onPressed: () {},
                color:Colors.black26,
                minWidth: size.width * 0.5,
              ),

            ),

            SizedBox(height: size.height * 0.35),*/
                  Container(
                    margin: EdgeInsets.only(top:35.0),
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      icon: Icon (Icons.arrow_back_ios_outlined),
                      /*child: Text("Sign In",
                    style: TextStyle(color: Colors.black, fontSize: 20.0),
                  ),

                  shape: Border.all(color:Colors.white,width: 2.0),*/
                      iconSize: 30.0,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return SignUpScreen();
                            },
                          ),
                        );
                      },

                      /*color: Colors.white,
                  minWidth: size.width * 0.5,
                  height: 50.0,*/

                    ),
                  ),

                  /*Column(
                      children: <Widget>[
                        SettingsList(
                          sections: [
                            SettingsSection(
                              title: 'Section',
                              tiles: [
                                SettingsTile.switchTile(
                                  title: 'Notifications',
                                  subtitle: 'Receive notifications from the app',
                                  leading: Icon(Icons.notifications_none_outlined),
                                  /*switchValue: value,*/
                                  onToggle: (bool value) {},
                                ),
                                SettingsTile(
                                  title: 'Language',
                                  subtitle: 'English',
                                  leading: Icon(Icons.g_translate),
                                  onPressed: (BuildContext context) {},
                                ),

                                SettingsTile(
                                  title: 'Security',
                                  subtitle: 'Update password and account settings',
                                  leading: Icon(Icons.security_outlined),
                                  onPressed: (BuildContext context) {},
                                ),

                                SettingsTile(
                                  title: 'Help & Support',
                                  subtitle: 'For any questions, contact us',
                                  leading: Icon(Icons.support_agent_outlined),
                                  onPressed: (BuildContext context) {},
                                ),

                                SettingsTile(
                                  title: 'Log out',
                                  leading: Icon(Icons.logout),
                                  onPressed: (BuildContext context) {},
                                ),


                              ],
                            ),
                          ],

                        )
                      ]
                  )*/
                ]
            )
        )
    );

  }
}





