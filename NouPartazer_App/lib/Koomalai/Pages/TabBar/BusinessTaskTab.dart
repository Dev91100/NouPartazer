import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noupartazer_app/Devashish/Global.dart';

import 'package:noupartazer_app/Koomalai/Pages/Task/BusinessTask/BusinessCompletedTask.dart';
import 'package:noupartazer_app/Koomalai/Pages/Task/BusinessTask/BusinessOngoingTask.dart';
import 'package:noupartazer_app/Koomalai/Pages/Task/BusinessTask/BusinessUnassignedTask.dart';
import 'package:noupartazer_app/Koomalai/Pages/Task/BusinessTask/BusinessCancelledTask.dart';

class BusinessTaskTab extends StatefulWidget
{
  const BusinessTaskTab({
    Key key,
  }) : super(key: key);

  @override
  _BusinessTaskTabState createState() => _BusinessTaskTabState();
}

class _BusinessTaskTabState extends State<BusinessTaskTab>
{
  @override
  Widget build(BuildContext context)
  {
    ThemeData
    (
      brightness: Brightness.light,
      primaryColor: Colors.white, //Changing this will change the color of the TabBar
      accentColor: Colors.black,
    );

    return DefaultTabController
    (
      length:4,
      child: Scaffold
      (
        appBar: AppBar
        (
          backgroundColor: Colors.white,

          title: Container
          (
            margin: EdgeInsets.only(right: 50.0),
            alignment: Alignment.center,
            child:  Text
            (
              'TASKS', // Text Parameter
              style: TextStyle
              (
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.bold,
                fontSize: Global().mediumText,
                color: new Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
          ),

          bottom: TabBar
          (
            indicatorColor: Colors.black,
            indicatorWeight: 5.0,
            labelColor: Colors.black,
            labelStyle: TextStyle
            (
              fontSize: Global().tinyText,
              fontWeight:FontWeight.bold,
            ),
            unselectedLabelColor: Colors.black54,
            unselectedLabelStyle:TextStyle
            (
              fontSize: Global().tinyText,
              fontWeight:FontWeight.normal,
            ),
            tabs:
            [
              Tab
              (
                text: "UNASSIGNED",
              ),
              Tab
              (
                text: "ONGOING",
              ),
              Tab
              (
                text: "COMPLETED",
              ),
              Tab
              (
                text: "CANCELLED",
              ),
            ],
          ),
        ),

        body: TabBarView
        (
          children:
          [
            BusinessUnassignedTask(),
            BusinessOngoingTask(),
            BusinessCompletedTask(),
            BusinessCancelledTask(),
          ],
        ),
      ),
    );
  }
}