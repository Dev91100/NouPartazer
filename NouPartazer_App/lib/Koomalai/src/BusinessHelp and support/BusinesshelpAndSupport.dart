
import 'package:NouPartazer_App/Koomalai/src/BusinessSettings/Setting.dart';
import 'package:flutter/material.dart';

class BusinessHelpAndSupport extends StatelessWidget {
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

                      Row(
                          children: <Widget>[
                          Container(
                          margin: EdgeInsets.only(top:35.0),
                          alignment: Alignment.centerLeft,


                          child: IconButton(
                            icon: Icon (Icons.arrow_back_ios_outlined),

                            iconSize: 30.0,
                            onPressed: () {
                            Navigator.push(
                            context,
                            MaterialPageRoute(
                            builder: (context) {
                                return BusinessSettings();
                            },
                            ),
                            );
                            },
                            ),

                            ),


                            SizedBox(
                            width: 50.0,
                            ),


                          Container(
                                margin: EdgeInsets.only(top:35.0),
                                child: Text(
                                "HELP & SUPPORT",
                                style: TextStyle(
                                
                                fontSize: 22.0,
                                //fontWeight: FontWeight.bold,
                                ),
                                ),
                          )
                          ]
                          ),



                     /* SwitchListTile(

                        /* Icon(Icons.notifications_none_outlined),*/
                             activeColor: Color.fromRGBO(41, 90, 245, 1),
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
                          Icons.supervised_user_circle_outlined,
                          color: Colors.black87,
                          size: 30.0,
                        ),
                        title: Text("About Us" ,
                          style: TextStyle(
                          
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                        subtitle: Text('Learn more about NouPartazer',
                          style: TextStyle(
                            
                            fontSize: 13.0,

                          ),
                        ),
                        trailing: Icon(Icons.keyboard_arrow_right,color: Colors.black87,size: 30.0,),
                        onTap: () {
                          //open change password
                        },
                      ),

                      ListTile(
                        title: Text('Terms & Conditions',
                          style: TextStyle(
                            
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text('Learn more about NouPartazer',
                          style: TextStyle(
                            
                            fontSize: 13.0,

                          ),
                        ) ,
                        leading: Icon(Icons.assignment_outlined, color: Colors.black87,
                          size: 30.0,),
                        trailing: Icon(Icons.keyboard_arrow_right,color: Colors.black87,size: 30.0,),
                        onTap: () {
                          //open change password
                        },
                      ),

                      ListTile(
                        title: Text('Privacy Policy',
                          style: TextStyle(
                            
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text('Learn more about NouPartazer',
                          style: TextStyle(
                            
                            fontSize: 13.0,

                          ),
                        ) ,
                        leading: Icon(Icons.privacy_tip_outlined, color: Colors.black87,
                          size: 30.0,),
                        trailing: Icon(Icons.keyboard_arrow_right,color: Colors.black87,size: 30.0,),
                        onTap: () {
                          //open change language
                        },
                      ),

                      ListTile(
                        title: Text('FAQ',
                          style: TextStyle(
                            
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text('Learn more about NouPartazer',
                          style: TextStyle(
                            
                            fontSize: 13.0,

                          ),
                        ) ,
                        leading: Icon(Icons.question_answer_outlined, color: Colors.black87,
                          size: 30.0,),
                        trailing: Icon(Icons.keyboard_arrow_right,color: Colors.black87,size: 30.0,),
                        onTap: () {
                          //open change location
                        },
                      ),


                      ListTile(
                        title: Text('Contact Us',
                          style: TextStyle(
                            
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        subtitle: Text('Learn more about NouPartazer',
                          style: TextStyle(
                            
                            fontSize: 13.0,

                          ),
                        ) ,

                        leading: Icon(Icons.perm_phone_msg_outlined, color: Colors.black87,
                          size: 30.0,),
                        trailing: Icon(Icons.keyboard_arrow_right,color: Colors.black87,size: 30.0,),
                        onTap: () {
                          //open change location
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

