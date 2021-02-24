import 'package:NouPartazer_App/Koomalai/src/Business%20NGO%20list/BusinessNGO%20list.dart';
import 'package:NouPartazer_App/Koomalai/src/Business%20profile/BusinessProfile.dart';
import 'package:NouPartazer_App/Koomalai/src/pages/businessHomePage.dart';
import 'package:NouPartazer_App/Koomalai/src/pages/orderPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Business task tab bar.dart';

class BusinessMainScreen extends StatefulWidget
{
  final Widget child;
  const BusinessMainScreen({

    Key key,
    @required this.child,
  }) : super(key: key);


  @override
  _BusinessMainScreenState createState() => _BusinessMainScreenState();
}

class _BusinessMainScreenState extends State<BusinessMainScreen> {
  int currentIndex =0;
  List<Widget> pages;
  Widget currentPage;
  BusinessHomePage homePage;
  BusinessProfile profilePage;
  OrderPage orderPage;
  BusinessTask taskTab;
  BusinessNGOList NGOList;

  @override
  void initState() {
    super.initState();
    homePage=BusinessHomePage();
    profilePage=BusinessProfile();
    orderPage=OrderPage();
    taskTab=BusinessTask();
    NGOList=BusinessNGOList();

    pages=[homePage,profilePage,orderPage,taskTab,NGOList];
    currentPage=homePage;

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
            title: Text("Tasks"),
            ),

          BottomNavigationBarItem(
            icon:Icon(Icons.favorite),
            // ignore: deprecated_member_use
            title: Text("NGO Lists"),
          ),


        ],
        selectedItemColor: Colors.blueAccent[700],

      ),
      body: currentPage,

    );
  }
}