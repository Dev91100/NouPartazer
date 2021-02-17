import 'package:NouPartazer_App/Koomalai/src/IndividualSettings/IndividualSetting.dart';
import 'package:NouPartazer_App/Koomalai/src/NGO%20list/NGO%20list.dart';
import 'package:NouPartazer_App/Koomalai/src/pages/individualHomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:NouPartazer_App/Koomalai/Screens/Login/login_screen.dart';
import 'package:NouPartazer_App/Koomalai/Screens/Signup/components/social_icon.dart';
import 'package:NouPartazer_App/Koomalai/src/pages/homePage.dart';
import 'package:NouPartazer_App/Koomalai/src/pages/mapsPage.dart';
import 'package:NouPartazer_App/Koomalai/src/pages/orderPage.dart';
import 'package:NouPartazer_App/Koomalai/src/pages/profilePage.dart';

class IndividualNGOMainScreen extends StatefulWidget
{
  @override
  _IndividualNGOMainScreenState createState() => _IndividualNGOMainScreenState();
}

class _IndividualNGOMainScreenState extends State<IndividualNGOMainScreen> {
  int currentIndex =1;
  List<Widget> pages;
  Widget currentPage;
  IndividualHomePage individualHomePage;
  NGOList NGOLists;
  IndividualSettings individualSettings;

  @override
  void initState() {
    super.initState();
    individualHomePage=IndividualHomePage();
    NGOLists=NGOList();
    individualSettings= IndividualSettings();

    pages=[individualHomePage,NGOLists,individualSettings];
    currentPage=NGOList();

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
            icon:Icon(Icons.favorite),
            // ignore: deprecated_member_use
            title: Text("NGO List"),


            ),

            BottomNavigationBarItem(
            icon:Icon(Icons.settings),
            // ignore: deprecated_member_use
            title: Text("Settings"),
            ),


        ],
        selectedItemColor: Colors.blueAccent[700],

      ),
      body: currentPage,

    );
  }
}