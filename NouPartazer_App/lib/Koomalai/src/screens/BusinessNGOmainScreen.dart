import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'BusinessTaskBar.dart';

import 'package:noupartazer_app/Devashish/pages/CreateEvent.dart';
import 'package:noupartazer_app/Koomalai/Pages/DonationAndNGOCentresList/BusinessNGOCentresList.dart';
import 'package:noupartazer_app/Koomalai/Pages/ProfilePage/BusinessProfile.dart';
import 'package:noupartazer_app/Koomalai/Pages/HomePage/BusinessHomePage.dart';

class BusinessMainScreen extends StatefulWidget
{
  const BusinessMainScreen({
    Key key,
  }) : super(key: key);

  @override
  _BusinessMainScreenState createState() => _BusinessMainScreenState();
}

class _BusinessMainScreenState extends State<BusinessMainScreen>
{
  int currentIndex = 0;
  List<Widget> pages;
  Widget currentPage;
  BusinessHomePage homePage;
  BusinessProfile profilePage;
  CreateEvent event;
  BusinessTask taskTab;
  BusinessNGOCentresList ngoList;

  @override
  void initState()
  {
    super.initState();
    homePage    = BusinessHomePage();
    profilePage = BusinessProfile();
    event       = CreateEvent();
    taskTab     = BusinessTask();
    ngoList     = BusinessNGOCentresList();

    pages       = [homePage, profilePage, event, taskTab, ngoList];
    currentPage = homePage;
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      bottomNavigationBar: BottomNavigationBar
      (
        onTap: (int index)
        {
          setState(() {
            currentIndex=index;
            currentPage=pages[index];
          });
        },

        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,

        items:
        [
          BottomNavigationBarItem
          (
            icon:Icon(Icons.home),
            // ignore: deprecated_member_use
            title: Text("home"),
          ),
          BottomNavigationBarItem
          (
            icon:Icon(Icons.person),
            // ignore: deprecated_member_use
            title: Text("Profile"),
          ),
          BottomNavigationBarItem
          (
            icon:Icon(Icons.add_circle_rounded,color: Color.fromRGBO(245, 197, 41, 1),size: 50.0,),
            // ignore: deprecated_member_use
            title: Text("Add stories"),
          ),
          BottomNavigationBarItem
          (
            icon:Icon(Icons.event),
            // ignore: deprecated_member_use
            title: Text("Tasks"),
          ),
          BottomNavigationBarItem
          (
            icon:Icon(Icons.favorite),
            // ignore: deprecated_member_use
            title: Text("NGO Lists"),
          ),
        ],
        selectedItemColor: Color.fromRGBO(41, 90, 245, 1),
      ),
      body: currentPage,
    );
  }
}