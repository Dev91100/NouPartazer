import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:noupartazer_app/Koomalai/Pages/SettingsPage/IndividualSettings.dart';
import 'package:noupartazer_app/Koomalai/Pages/DonationAndNGOCentresList/IndividualNGOCentresList.dart';
import 'package:noupartazer_app/Koomalai/Pages/HomePage/IndividualHomePage.dart';

class HelpAndSupportMainScreen extends StatefulWidget
{
  @override
  _HelpAndSupportMainScreenState createState() => _HelpAndSupportMainScreenState();
}

class _HelpAndSupportMainScreenState extends State<HelpAndSupportMainScreen> {
  int currentIndex =2;
  List<Widget> pages;
  Widget currentPage;
  IndividualHomePage individualHomePage;
  IndividualNGOCentresList ngoList;
  IndividualSettings individualSettings;

  @override
  void initState() {
    super.initState();
    individualHomePage=IndividualHomePage();
    ngoList = IndividualNGOCentresList();
    individualSettings= IndividualSettings();

    pages=[individualHomePage,ngoList,individualSettings];
    currentPage=IndividualSettings();

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
        selectedItemColor: Color.fromRGBO(41, 90, 245, 1),

      ),
      body: currentPage,

    );
  }
}