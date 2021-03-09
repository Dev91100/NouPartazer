import 'package:NouPartazer_App/Yashna/Pages/EditInfoAndContact/EditContact.dart';
import 'package:flutter/material.dart';
import 'package:NouPartazer_App/Yashna/Pages/EditInfoAndContact/BusinessEditName.dart';
import 'package:NouPartazer_App/Yashna/Pages/EditInfoAndContact/NGOEditName.dart';
import 'package:NouPartazer_App/Koomalai/constants.dart';
import 'package:NouPartazer_App/Atish/Pages/SplashScreen/SplashScreen.dart';
import 'package:NouPartazer_App/Yashna/Pages/CancelDonation.dart';
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
      home: CancelDonation(),
    );
  }
}



