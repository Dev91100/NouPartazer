import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noupartazer_app/Atish/components/Text/MediumText.dart';

import 'package:noupartazer_app/Global.dart';

import 'package:noupartazer_app/Koomalai/Pages/Task/NGOTask/NGOCancelledTask.dart';
import 'package:noupartazer_app/Koomalai/Pages/Task/NGOTask/NGOCompletedTask.dart';
import 'package:noupartazer_app/Koomalai/Pages/Task/NGOTask/NGOOngoingTask.dart';

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