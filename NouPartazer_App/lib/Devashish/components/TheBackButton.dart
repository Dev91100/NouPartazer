import 'package:flutter/material.dart';

class TheBackButton extends StatelessWidget {

  TheBackButton();
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context);

    return LayoutBuilder
    (
      builder: (ctx, constraints)
      {
        return Container
        (
          padding: EdgeInsets.fromLTRB(0, 0, 0, screen.size.height * 0.01),
          child: Align
          ( 
            alignment: Alignment.topLeft,  
            // alignment: Alignment.bottomLeft,
            child: IconButton
            (
              icon: Icon(Icons.keyboard_arrow_left),  
              iconSize: 70,  
              onPressed: () {}, 
            ), 
          ),          
        );
      }
    );
  }
}