import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:NouPartazer_App/Koomalai/src/Business%20Cancelled%20events/Business%20cancelled%20event%20details.dart';
import 'package:NouPartazer_App/Koomalai/src/Business%20completedEvent%20Details/Business%20completed%20event%20details.dart';
import 'package:NouPartazer_App/Koomalai/src/Business%20ongoing%20events/Business%20ongoing%20event%20details.dart';
import 'package:NouPartazer_App/Atish/components/PageTitle.dart';

class NGOTaskTab extends StatefulWidget
{
  final Widget child;
  const NGOTaskTab
  ({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  _NGOTaskTabState createState() => _NGOTaskTabState();
}

class _NGOTaskTabState extends State<NGOTaskTab>
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
      length:3,

      child: Scaffold
      (
        body: TabBarView
        (
          children:
          [
            BusinessOngoingEvent(),
            BusinessCompletedEvent(),
            BusinessCancelledEvent(),
          ],
        ),

        appBar: AppBar
        (
          backgroundColor: Colors.white,

          title: Container
          (
            margin: EdgeInsets.only
            (
              right: 50.0
            ),
            alignment: Alignment.center,
            child:  Text
            (
              "TASKS",
              style: TextStyle
              (
                color: Colors.black
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
              fontWeight:FontWeight.bold,fontSize: 15.0
            ),
            unselectedLabelColor: Colors.black54,
            unselectedLabelStyle:TextStyle
            (
              fontWeight:FontWeight.normal,fontSize: 15.0
            ),
            
            tabs:
            [
              Tab
              (
              text: "ONGOING",
              ),
              Tab
              (
                text:"COMPLETED",
              ),
              Tab
              (
                text:"CANCELLED",
              ),
            ],
          ),
        ),
      ),
    );
  }
}