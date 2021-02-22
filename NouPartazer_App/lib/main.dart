import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp
    (
      title: 'NouPartazer',
      home: Story(),
    );
  }
}

class Story extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      backgroundColor: Colors.white,
      body: 
        Container
        (
          
        ),
    );
  }
}