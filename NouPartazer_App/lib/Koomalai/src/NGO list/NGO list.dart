
import 'package:NouPartazer_App/Koomalai/src/Individual%20NGO%20profile/IndividualNGOProfile.dart';
import 'package:flutter/material.dart';

class NGOList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          SingleChildScrollView(
            padding: const EdgeInsets.all(0.0),

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
                                "NGO LIST",
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
                        image: AssetImage('assets/JPEG/Rectangle 12.jpg'),
                        height: 200.0,
                       ),
                        title: Text("Manzer Partazer" ,
                          style: TextStyle(
                          fontFamily: "risotto",
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                        subtitle:

                          Text('First food project in Mauritius',
                            style: TextStyle(
                              fontFamily: "risotto",
                              fontSize: 13.0,

                          ),
                        ),


                          onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return IndividualNGOProfile();
                              },
                            ),
                          );
                       }

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

