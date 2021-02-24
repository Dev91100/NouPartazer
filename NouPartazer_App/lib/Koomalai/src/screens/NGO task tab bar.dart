//import 'package:NouPartazer_App/Koomalai/src/NGO%20Donation/NGO%20donation.dart';
import 'dart:ui';

import 'package:NouPartazer_App/Koomalai/src/Business%20Cancelled%20events/Business%20cancelled%20event%20details.dart';
import 'package:NouPartazer_App/Koomalai/src/Business%20completedEvent%20Details/Business%20completed%20event%20details.dart';
import 'package:NouPartazer_App/Koomalai/src/Business%20ongoing%20events/Business%20ongoing%20event%20details.dart';
import 'package:NouPartazer_App/Koomalai/src/NGO%20donation/NGO%20donation.dart';
import 'package:NouPartazer_App/Koomalai/src/NGO%20profile/NGOProfile.dart';
import 'package:NouPartazer_App/Koomalai/src/NGODonation/NGO%20donation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:NouPartazer_App/Koomalai/Screens/Login/login_screen.dart';
import 'package:NouPartazer_App/Koomalai/Screens/Signup/components/social_icon.dart';
import 'package:NouPartazer_App/Koomalai/src/pages/homePage.dart';
import 'package:NouPartazer_App/Koomalai/src/pages/mapsPage.dart';
import 'package:NouPartazer_App/Koomalai/src/pages/orderPage.dart';
import 'package:NouPartazer_App/Koomalai/src/pages/profilePage.dart';

class NGOTaskTab extends StatefulWidget
{
  final Widget child;
  const NGOTaskTab({

    Key key,
    @required this.child,
  }) : super(key: key);


  @override
  _NGOTaskTabState createState() => _NGOTaskTabState();
}

class _NGOTaskTabState extends State<NGOTaskTab> {
  /*int currentIndex =1;
  List<Widget> pages;
  Widget currentPage;
  BusinessOngoingEvent ongoingEvent;
  BusinessCompletedEvent completedEvent;
  BusinessCancelledEvent cancelledEvent;

  @override
  void initState() {
    super.initState();
    ongoingEvent=BusinessOngoingEvent();
    completedEvent=BusinessCompletedEvent();
    cancelledEvent=BusinessCancelledEvent();

    pages=[ongoingEvent, completedEvent,cancelledEvent];
    currentPage=completedEvent;

  }*/

  @override
  Widget build(BuildContext context) {
    ThemeData(
      fontFamily: 'risotto',
      brightness: Brightness.light,
      primaryColor: Colors.white, //Changing this will change the color of the TabBar
      accentColor: Colors.black,
    );
    return DefaultTabController(
      length:3,

      /*bottomNavigationBar: BottomNavigationBar(
        onTap: (int index)
        {
          setState(() {
            currentIndex=index;
            currentPage=pages[index];
          });
        },
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,

        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:Icon(Icons.home),
            // ignore: deprecated_member_use
            title: Text("home"),
            ),


            BottomNavigationBarItem(
            icon:Icon(Icons.person),
            // ignore: deprecated_member_use
            title: Text("Profile"),


            ),
            BottomNavigationBarItem(
            icon:Icon(Icons.add_circle_rounded,color: Colors.amber,size: 50.0,),
            // ignore: deprecated_member_use
            title: Text("Add stories"),
            ),

            BottomNavigationBarItem(
            icon:Icon(Icons.event),
            // ignore: deprecated_member_use
            title: Text("Events"),
            ),

          BottomNavigationBarItem(
            icon:Icon(Icons.favorite),
            // ignore: deprecated_member_use
            title: Text("Donations"),
          ),


        ],
        selectedItemColor: Colors.blueAccent[700],

      ),
      body: currentPage,*/


              child: Scaffold(

              appBar: AppBar(
                backgroundColor: Colors.white,

                title: Container(
                  margin: EdgeInsets.only(right: 50.0),
                  alignment: Alignment.center,
                child:  Text("TASKS",
                style: TextStyle(color: Colors.black),
                  ),
                ),
        /*backgroundColor: Colors.white,*/

                  bottom: TabBar(

                    indicatorColor: Colors.black,
                    indicatorWeight: 5.0,
                  labelColor: Colors.black,
                  labelStyle: TextStyle(fontWeight:FontWeight.bold,fontSize: 15.0),
                  unselectedLabelColor: Colors.black54,
                  unselectedLabelStyle:TextStyle(fontWeight:FontWeight.normal,fontSize: 15.0) ,
                  tabs:<Widget>[
                     Tab(/*child:Text ("ONGOING",
                     style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)*/
                       text: "ONGOING",
                     ),
                    Tab(/*child:Text ("COMPLETED",
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),
                    )*/text: "COMPLETED",
                    ),
                    Tab(/*child:Text ("CANCELLED",
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),
                    )*/text: "CANCELLED",
                    ),


                  ],


              ),
            ),
                body: TabBarView(
                  children: [

                    BusinessOngoingEvent(),
                    BusinessCompletedEvent(),
                    BusinessCancelledEvent(),

              ],

            ),



              ),

          );





  }
}