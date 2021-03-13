import 'package:flutter/material.dart';

class TheBackButton extends StatelessWidget
{
  final Function press;

  TheBackButton
  ({
    Key key,
    this.press,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context)
  {
    return LayoutBuilder
    (
      builder: (ctx, constraints)
      {
        return IconButton
        (
          color: Colors.black,
          padding: EdgeInsets.all(0),
          icon: Icon(Icons.keyboard_arrow_left),  
          iconSize: 50,
          onPressed: press,
        );
      }
    );
  }
}