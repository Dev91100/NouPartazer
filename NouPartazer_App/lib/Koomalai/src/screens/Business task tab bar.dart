import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:NouPartazer_App/Koomalai/src/Completed%20ngo%20task/BusinessCompletedTask.dart';
import 'package:NouPartazer_App/Koomalai/src/Ongoing%20ngo%20task/BusinessOngoingTask.dart';
import 'package:NouPartazer_App/Koomalai/src/unassigned%20ngo%20task/BusinessUnassignedTask.dart';
import 'package:NouPartazer_App/Atish/Pages/Task/BusinessTask/BusinessCancelledTask.dart';

class BusinessTask extends StatefulWidget
{
  final Widget child;
  const BusinessTask({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  _BusinessTaskState createState() => _BusinessTaskState();
}

class _BusinessTaskState extends State<BusinessTask>
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
              "TASKS",
              style: TextStyle(color: Colors.black),
            ),
          ),

          bottom: TabBar
          (
            indicatorColor: Colors.black,
            indicatorWeight: 5.0,
            labelColor: Colors.black,
            labelStyle: TextStyle(fontWeight:FontWeight.bold,fontSize: 14.0),
            unselectedLabelColor: Colors.black54,
            unselectedLabelStyle:TextStyle(fontWeight:FontWeight.normal,fontSize: 14.0) ,
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