import 'package:NouPartazer_App/Atish/Pages/Splashscreen/SplashScreen.dart';
import 'package:NouPartazer_App/Yashna/Pages/EditInfoAndContact/EditContact.dart';
import 'package:flutter/material.dart';
import 'package:NouPartazer_App/Yashna/Pages/EditInfoAndContact/BusinessEditName.dart';
import 'package:NouPartazer_App/Yashna/Pages/EditInfoAndContact/NGOEditName.dart';
import 'package:NouPartazer_App/Koomalai/constants.dart';
import 'package:NouPartazer_App/Atish/Pages/Splashscreen/SplashScreen.dart';
import 'package:NouPartazer_App/Yashna/Pages/ConfirmationDialog/CancelDonation.dart';
import 'package:NouPartazer_App/Yashna/Pages/ConfirmationDialog/AcceptDonation.dart';
import 'package:NouPartazer_App/Yashna/Pages/ConfirmationDialog/CancelEvent.dart';
import 'package:NouPartazer_App/Yashna/Pages/NGOEditMembers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp
    (
      debugShowCheckedModeBanner: false,
      title: 'NouPartazer',
      theme: ThemeData
      (
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: SplashScreen(),
    );
  }
}



