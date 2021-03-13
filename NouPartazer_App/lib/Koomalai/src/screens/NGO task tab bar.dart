import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:NouPartazer_App/Koomalai/src/Business%20Cancelled%20events/NGOCancelledTask.dart';
import 'package:NouPartazer_App/Koomalai/src/Business%20completedEvent%20Details/NGOCompletedTask.dart';
import 'package:NouPartazer_App/Koomalai/src/Business%20ongoing%20events/NGOOngoingTask.dart';

class NGOTaskTab extends StatefulWidget
{
  const NGOTaskTab
  ({
    Key key,
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
      length: 3,

      child: Scaffold
      (
        body: TabBarView
        (
          children:
          [
            NGOOngoingTask(),
            NGOCompletedTask(),
            NGOCancelledTask(),
          ],
        ),

        appBar: AppBar
        (
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text
          (
            'TASKS', // Text Parameter
            style: GoogleFonts.comfortaa
            (
              textStyle: TextStyle
              (
                fontWeight: FontWeight.bold,
                fontSize: 18,
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
              fontWeight:FontWeight.bold,fontSize: 15.0
            ),
            unselectedLabelColor: Colors.black54,
            unselectedLabelStyle:TextStyle
            (
              fontWeight:FontWeight.normal,fontSize: 15.0
            ),
            
            tabs:
            [
              FittedBox
              (
                child: Tab
                (
                  text: 'ONGOING',
                ),
              ),
              FittedBox
              (
                child: Tab
                (
                  text: 'COMPLETED',
                ),
              ),
              FittedBox
              (
                child: Tab
                (
                  text: 'CANCELLED',
                ),
              ),
            ],
          ), 
        ),
      ),
    );
  }
}