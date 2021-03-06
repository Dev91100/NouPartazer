import 'package:flutter/material.dart';

import 'package:noupartazer_app/Global.dart';

class TheBackButton extends StatelessWidget
{
  final Color color;

  TheBackButton
  (
    {
      this.color = Colors.black,
    }
  );
  @override
  Widget build(BuildContext context)
  {
    return LayoutBuilder
    (
      builder: (ctx, constraints)
      {
        return IconButton
        (
          color: color,
          padding: EdgeInsets.all(0),
          icon: Icon(Icons.keyboard_arrow_left),  
          iconSize: Global().mediumIcon,
          onPressed: ()
          {
            Navigator.of(context).pop();
          },
        );
      }
    );
  }
}