
import 'package:NouPartazer_App/Koomalai/Screens/Login/login_screen.dart';
import 'package:NouPartazer_App/Koomalai/Screens/Signin/signin_screen.dart';
import 'package:NouPartazer_App/Koomalai/src/Help%20and%20support/helpAndSupport.dart';
import 'package:NouPartazer_App/Koomalai/src/Individual%20Help%20and%20support/IndividualhelpAndSupport.dart';
import 'package:NouPartazer_App/Koomalai/src/pages/profilePage.dart';
import 'package:flutter/material.dart';
import 'package:NouPartazer_App/Koomalai/src/Settings/components/body.dart';
import 'package:NouPartazer_App/Koomalai/splashscreen.dart';
import 'package:settings_ui/settings_ui.dart';

class IndividualSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                /*Card(
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  color: Colors.purple,
                  child: ListTile(
                    onTap: () {
                      //open edit profile
                    },
                    title: Text(
                      "John Doe",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(avatars[0]),
                    ),
                    trailing: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                ),*/
                const SizedBox(height: 25.0),

                  Column(
                    children: <Widget>[



                          Container(
                                margin: EdgeInsets.only(top:35.0),
                                child: Text(
                                "ALL SETTINGS",
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
                        leading: Icon(
                          Icons.notifications_none_outlined,
                          color: Colors.black87,
                          size: 30.0,
                        ),
                        title: Text("Notifications" ,
                          style: TextStyle(
                          fontFamily: "risotto",
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                        subtitle: Text('Receive notifications from the app',
                          style: TextStyle(
                            fontFamily: "risotto",
                            fontSize: 13.0,

                          ),
                        ),
                        trailing: Icon(Icons.toggle_on,color: Colors.blueAccent[700],size: 50.0,),
                        onTap: () {
                          //open change password
                        },
                      ),

                      ListTile(
                        title: Text('Language',
                          style: TextStyle(
                            fontFamily: "risotto",
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text('English',
                          style: TextStyle(
                            fontFamily: "risotto",
                            fontSize: 13.0,

                          ),
                        ) ,
                        leading: Icon(Icons.g_translate, color: Colors.black87,
                          size: 30.0,),
                        trailing: Icon(Icons.keyboard_arrow_right,color: Colors.black87,size: 30.0,),
                        onTap: () {
                          //open change password
                        },
                      ),


                      ListTile(
                        title: Text('Help & Support',
                          style: TextStyle(
                            fontFamily: "risotto",
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text('For any questions, contact us',
                          style: TextStyle(
                            fontFamily: "risotto",
                            fontSize: 13.0,

                          ),
                        ) ,
                        leading: Icon(Icons.support_agent_outlined, color: Colors.black87,
                          size: 30.0,),
                        trailing: Icon(Icons.keyboard_arrow_right,color: Colors.black87,size: 30.0,),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return  IndividualHelpAndSupport();
                              },
                            ),
                          );
                        },
                      ),


                      ListTile(
                        title: Text('Log in',
                          style: TextStyle(
                            fontFamily: "risotto",
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        leading: Icon(Icons.settings_power_outlined, color: Colors.black87,
                          size: 30.0,),
                        trailing: Icon(Icons.keyboard_arrow_right,color: Colors.black87,size: 30.0,),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return LoginScreen();
                              },
                            ),
                          );
                        },
                      ),

                    ],
                  ),

               /* const SizedBox(height: 20.0),
                Text(
                  "Notification Settings",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
                ),
                SwitchListTile(
                  activeColor: Colors.purple,
                  contentPadding: const EdgeInsets.all(0),
                  value: true,
                  title: Text("Received notification"),
                  onChanged: (val) {},
                ),
                SwitchListTile(
                  activeColor: Colors.purple,
                  contentPadding: const EdgeInsets.all(0),
                  value: false,
                  title: Text("Received newsletter"),
                  onChanged: null,
                ),
                SwitchListTile(
                  activeColor: Colors.purple,
                  contentPadding: const EdgeInsets.all(0),
                  value: true,
                  title: Text("Received Offer Notification"),
                  onChanged: (val) {},
                ),
                SwitchListTile(
                  activeColor: Colors.purple,
                  contentPadding: const EdgeInsets.all(0),
                  value: true,
                  title: Text("Received App Updates"),
                  onChanged: null,
                ),
                const SizedBox(height: 60.0),
              ],
            ),
          ),
          Positioned(
            bottom: -20,
            left: -20,
            child: Container(
              width: 80,
              height: 80,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.purple,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            bottom: 00,
            left: 00,
            child: IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ),
              onPressed: () {
                //log out
              },
            ),
          )*/
        ],
      ),
          )
        ]

    )
          );

  }

  Container _buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      width: double.infinity,
      height: 1.0,
      color: Colors.grey.shade400,
    );
  }



  }

