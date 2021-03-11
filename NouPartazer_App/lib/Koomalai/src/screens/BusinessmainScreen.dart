import 'package:NouPartazer_App/Koomalai/src/Business%20NGO%20list/BusinessNGO%20list.dart';
import 'package:NouPartazer_App/Koomalai/src/Business%20profile/BusinessProfile.dart';
import 'package:NouPartazer_App/Koomalai/src/pages/businessHomePage.dart';
import 'package:NouPartazer_App/Koomalai/src/pages/orderPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Business task tab bar.dart';

class BusinessNGOMainScreen extends StatefulWidget
{
  final Widget child;
  const BusinessNGOMainScreen({

    Key key,
    @required this.child,
  }) : super(key: key);


  @override
  _BusinessNGOMainScreenState createState() => _BusinessNGOMainScreenState();
}

class _BusinessNGOMainScreenState extends State<BusinessNGOMainScreen> {
  int currentIndex =4;
  List<Widget> pages;
  Widget currentPage;
  BusinessHomePage homePage;
  BusinessProfile profilePage;
  OrderPage orderPage;
  BusinessTask taskTab;
  NGOCentresList NGOList;

  @override
  void initState() {
    super.initState();
    homePage=BusinessHomePage();
    profilePage=BusinessProfile();
    orderPage=OrderPage();
    taskTab=BusinessTask();
    NGOList=NGOCentresList();

    pages=[homePage,profilePage,orderPage,taskTab,NGOList];
    currentPage=NGOList;

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
            title: Text("Tasks"),
            ),

          BottomNavigationBarItem(
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