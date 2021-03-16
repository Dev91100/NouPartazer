import 'package:noupartazer_app/Koomalai/src/IndividualSettings/IndividualSetting.dart';
import 'package:noupartazer_app/Koomalai/src/NGO%20list/NGO%20list.dart';
import 'package:noupartazer_app/Koomalai/src/pages/individualHomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondMainScreen extends StatefulWidget
{
  @override
  _SecondMainScreenState createState() => _SecondMainScreenState();
}

class _SecondMainScreenState extends State<SecondMainScreen>
{
  int currentIndex = 0;
  List<Widget> pages;
  Widget currentPage;
  IndividualHomePage individualHomePage;
  IndividualNGOCentresList ngoLists;
  IndividualSettings individualSettings;

  @override
  void initState()
  {
    super.initState();
    individualHomePage  = IndividualHomePage();
    ngoLists            = IndividualNGOCentresList();
    individualSettings  = IndividualSettings();

    pages       = [individualHomePage, ngoLists, individualSettings];
    currentPage = individualHomePage;
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
            currentIndex = index;
            currentPage = pages[index];
          });
        },
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,

        items:
        [
          BottomNavigationBarItem
          (
            icon: Icon(Icons.home),
            // ignore: deprecated_member_use
            title: Text("home"),
          ),
          BottomNavigationBarItem
          (
            icon: Icon(Icons.favorite),
            // ignore: deprecated_member_use
            title: Text("NGO List"),
          ),
          BottomNavigationBarItem
          (
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