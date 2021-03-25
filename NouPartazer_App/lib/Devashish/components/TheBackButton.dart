import 'package:flutter/material.dart';
import 'package:noupartazer_app/Devashish/Global.dart';

class TheBackButton extends StatelessWidget
{
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
          iconSize: Global().largeIcon,
          onPressed: ()
          {
            Navigator.of(context).pop();
          },
        );
      }
    );
  }
}