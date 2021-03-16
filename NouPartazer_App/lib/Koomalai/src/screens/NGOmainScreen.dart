import 'package:noupartazer_app/Atish/Pages/Story/BusinessStory/BusinessStoryModel.dart';
import 'package:noupartazer_app/Devashish/pages/CreateStory.dart';
import 'package:noupartazer_app/Koomalai/src/NGO%20donation/NGO%20donation.dart';
import 'package:noupartazer_app/Koomalai/src/NGO%20profile/NGOProfile.dart';
import 'package:noupartazer_app/Koomalai/src/pages/orderPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'NGO task tab bar.dart';

class NGOMainScreen extends StatefulWidget
{
  final Widget child;
  const NGOMainScreen({

    Key key,
    @required this.child,
  }) : super(key: key);


  @override
  _NGOMainScreenState createState() => _NGOMainScreenState();
}

class _NGOMainScreenState extends State<NGOMainScreen> {
  int currentIndex =1;
  List<Widget> pages;
  Widget currentPage;
  BusinessStoryModel homePage;
  NGOProfile profilePage;
  CreateStory story;
  NGODonation donation;

  NGOTaskTab task;
  @override
  void initState() {
    super.initState();
    homePage=BusinessStoryModel();
    profilePage=NGOProfile();
    story=CreateStory();
    donation= NGODonation();

    task=NGOTaskTab();
    pages=[homePage,profilePage,story,donation,task];
    currentPage=profilePage;

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