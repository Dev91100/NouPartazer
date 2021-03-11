import 'package:NouPartazer_App/Devashish/pages/CreateEvent.dart';
import 'package:NouPartazer_App/Devashish/pages/CreateStory.dart';
import 'package:NouPartazer_App/Koomalai/src/Business%20NGO%20list/BusinessNGO%20list.dart';
import 'package:NouPartazer_App/Koomalai/src/Business%20profile/BusinessProfile.dart';
import 'package:NouPartazer_App/Koomalai/src/pages/businessHomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Business task tab bar.dart';

class NGOTaskMainScreen extends StatefulWidget
{
  final Widget child;
  const NGOTaskMainScreen({

    Key key,
    @required this.child,
  }) : super(key: key);


  @override
  _NGOTaskMainScreenState createState() => _NGOTaskMainScreenState();
}

class _NGOTaskMainScreenState extends State<NGOTaskMainScreen> {
  int currentIndex =3;
  List<Widget> pages;
  Widget currentPage;
  BusinessHomePage homePage;
  BusinessProfile profilePage;
  CreateEvent event;
  BusinessTask taskTab;
  NGOCentresList NGOList;

  @override
  void initState() {
    super.initState();
    homePage=BusinessHomePage();
    profilePage=BusinessProfile();
   event=CreateEvent();
    taskTab=BusinessTask();
    NGOList=NGOCentresList();

    pages=[homePage,profilePage,event,taskTab,NGOList];
    currentPage=taskTab;

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
            icon:Icon(Icons.add_circle_rounded,color: Color.fromRGBO(245, 197, 41, 1),size: 50.0,),
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
        selectedItemColor: Color.fromRGBO(41, 90, 245, 1),

      ),
      body: currentPage,

    );
  }
}