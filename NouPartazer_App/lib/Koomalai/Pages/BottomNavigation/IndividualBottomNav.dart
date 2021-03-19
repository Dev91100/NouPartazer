import 'package:flutter/material.dart';

import 'package:noupartazer_app/Koomalai/Pages/DonationAndNGOCentresList/IndividualNGOCentresList.dart';
import 'package:noupartazer_app/Koomalai/Pages/HomePage/IndividualHomePage.dart';
import 'package:noupartazer_app/Koomalai/Pages/SettingsPage/IndividualSettings.dart';

class IndividualBottomNav extends StatefulWidget
{
  @override
  _IndividualBottomNavState createState() => _IndividualBottomNavState();
}

class _IndividualBottomNavState extends State<IndividualBottomNav>
{
  int currentIndex = 0;
  List<Widget> pages;
  Widget currentPage;
  Widget home;
  Widget list;
  Widget settings;

  Color selectedColor;
  Color unselectedColor;

  @override
  void initState()
  {
    super.initState();
    home     = IndividualHomePage();
    list     = IndividualNGOCentresList();
    settings = IndividualSettings();

    pages       = [home, list, settings];
    currentPage = home;

    selectedColor   = const Color.fromRGBO(0, 50, 193, 1);
    unselectedColor = Colors.black;
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      bottomNavigationBar: Container
      (
        decoration: BoxDecoration
        (
          boxShadow:
          [
            BoxShadow
            (
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 7,
              offset: Offset(0, 3),// changes position of shadow
            ),
          ],
        ),
        
        child: BottomNavigationBar
        (
          onTap: (int index)
          {
            setState(()
            {
              currentIndex = index;
              currentPage  = pages[index];
            });
          },

          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: selectedColor,
          unselectedItemColor: unselectedColor,
          iconSize: 35,
          showSelectedLabels: false,
          showUnselectedLabels: false,  
          elevation: 0,
          backgroundColor: Colors.white,
          
          items:
          [
            BottomNavigationBarItem
            (
              activeIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: 'home',
            ),

            BottomNavigationBarItem
            (
              activeIcon: Icon(Icons.view_list),
              icon: Icon(Icons.view_list_outlined),
              label: 'List',
            ),

            BottomNavigationBarItem
            (
              activeIcon: Icon(Icons.settings),
              icon: Icon(Icons.settings_outlined),
              label: 'Settings',
            ),
          ],
        ),
      ),

      body: currentPage,
    );
  }
}