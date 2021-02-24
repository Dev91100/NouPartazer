import 'package:flutter/material.dart';

import './Atish/StoryModel.dart';
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
      home: StoryModel(),
    );
  }
}

