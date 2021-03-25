import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noupartazer_app/Atish/components/Text/MediumText.dart';
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
    return DefaultTabController
    (
      length:4,
      
      child: Scaffold
      (
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

        appBar: AppBar
        (
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          title: MediumText
          (
            text: 'TASKS',
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.bold,
          ),

          bottom: TabBar
          (
            indicatorColor: Colors.black,
            indicatorWeight: 5.0,
            labelColor: Colors.black,
            labelStyle: TextStyle
            (
              fontSize: Global().tinyText,  // Override
              fontWeight:FontWeight.bold,
            ),
            unselectedLabelColor: Colors.black54,
            unselectedLabelStyle:TextStyle
            (
              fontSize: Global().tinyText,  // Override
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
      ),
    );
  }
}