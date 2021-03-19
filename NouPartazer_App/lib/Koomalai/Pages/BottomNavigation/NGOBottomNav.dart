import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:noupartazer_app/Devashish/pages/CreateStory.dart';
import 'package:noupartazer_app/Koomalai/Pages/DonationAndNGOCentresList/NGODonation.dart';
import 'package:noupartazer_app/Koomalai/Pages/HomePage/NGOHomePage.dart';
import 'package:noupartazer_app/Koomalai/Pages/ProfilePage/NGOProfile.dart';
import 'package:noupartazer_app/Koomalai/Pages/TabBar/NGOTaskTab.dart';

class NGOBottomNav extends StatefulWidget
{
  @override
  _NGOBottomNavState createState() => _NGOBottomNavState();
}

class _NGOBottomNavState extends State<NGOBottomNav>
{
  int currentIndex = 0;
  List<Widget> pages;
  Widget currentPage;
  Widget home;
  Widget profile;
  Widget event;
  Widget task;
  Widget list;

  Color selectedColor;
  Color unselectedColor;

  @override
  void initState()
  {
    super.initState();
    home    = NGOHomePage();
    profile = NGOProfile();
    event   = CreateStory();
    list    = Donation();
    task    = NGOTaskTab();

    pages       = [home, profile, event, list, task];
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
              offset: Offset(0, 3), // changes position of shadow
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
          iconSize: 30,
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
              activeIcon: Icon(Icons.person),
              icon: Icon(Icons.person_outlined),
              label: 'Profile',
            ),

            BottomNavigationBarItem
            (
              icon:Icon
              (
                Icons.add_circle_rounded,
                color: (currentIndex == 2) ? selectedColor : Color.fromRGBO(245, 197, 41, 1),
                size: 50.0,
              ),

              label: 'Add Stories',
            ),

            BottomNavigationBarItem
            (
              activeIcon: Icon(Icons.view_list),
              icon: Icon(Icons.view_list_outlined),
              label: 'Donation List',
            ),

            BottomNavigationBarItem
            (
              activeIcon: Icon
              (
                Icons.assignment_turned_in,
                size: 27,
              ),
              icon: Icon
              (
                Icons.assignment_turned_in_outlined,
                size: 27,
              ),
              label: 'Tasks',
            ),
          ],
        ),
      ),

      body: currentPage,
    );
  }
}