import 'package:flutter/material.dart';

import 'package:noupartazer_app/Pages/DonationAndNGOCentresList/IndividualNGOCentresList.dart';
import 'package:noupartazer_app/Pages/HomePage/IndividualHomePage.dart';
import 'package:noupartazer_app/pages/SettingsPage/IndividualSettings.dart';

//This file controls the bottom navigation bar in the individual POV

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

  PageController _pageController;

  @override
  void initState()
  {
    super.initState();
    _pageController = PageController();
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
              _pageController.animateToPage(index,
              duration: Duration(milliseconds: 1000), curve: Curves.easeOutSine);
            });
          },

          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: selectedColor,
          unselectedItemColor: unselectedColor,
          iconSize: 32,
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
              label: 'Home',
            ),

            BottomNavigationBarItem
            (
              activeIcon: Icon(Icons.favorite),
              icon: Icon(Icons.favorite_border),
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

      body:
      SizedBox.expand
      (
        child: PageView
        (
          controller: _pageController,
          onPageChanged: (index)
          {
            setState(()
            {
              currentIndex = index;
              currentPage  = pages[index];
            });
          },
          children: [home, list, settings]
        ),
      ),
    );
  }
}