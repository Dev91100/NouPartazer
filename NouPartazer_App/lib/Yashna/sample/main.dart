import 'package:flutter/material.dart';
import 'package:NouPartazer_App/Yashna/sample/CancelDonationHomepage.dart';
//import 'package:sample/CancelEventHomepage.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Home'),
    );
  }
}