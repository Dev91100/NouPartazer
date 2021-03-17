import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:noupartazer_app/Koomalai/Pages/Task/BusinessTask/BusinessCompletedTask.dart';
import 'package:noupartazer_app/Koomalai/Pages/Task/BusinessTask/BusinessOngoingTask.dart';
import 'package:noupartazer_app/Koomalai/Pages/Task/BusinessTask/BusinessUnassignedTask.dart';
import 'package:noupartazer_app/Koomalai/Pages/Task/BusinessTask/BusinessCancelledTask.dart';

class BusinessTask extends StatefulWidget
{
  const BusinessTask({
    Key key,
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