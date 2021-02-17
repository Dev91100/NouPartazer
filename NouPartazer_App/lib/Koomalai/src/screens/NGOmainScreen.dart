//import 'package:NouPartazer_App/Koomalai/src/NGO%20Donation/NGO%20donation.dart';
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

import 'NGO task tab bar.dart';

class NGOMainScreen extends StatefulWidget
{
  final Widget child;
  const NGOMainScreen({

    Key key,
    @required this.child,
  }) : super(key: key);


  @override
  _NGOMainScreenState createState() => _NGOMainScreenState();
}

class _NGOMainScreenState extends State<NGOMainScreen> {
  int currentIndex =1;
  List<Widget> pages;
  Widget currentPage;
  HomePage homePage;
  NGOProfile profilePage;
  OrderPage orderPage;
  NGODonation donation;

  NGOTaskTab task;
  @override
  void initState() {
    super.initState();
    homePage=HomePage();
    profilePage=NGOProfile();
    orderPage=OrderPage();
    donation= NGODonation();

    task=NGOTaskTab();
    pages=[homePage,profilePage,orderPage,donation,task];
    currentPage=profilePage;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
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
      body: currentPage,

    );
  }
}