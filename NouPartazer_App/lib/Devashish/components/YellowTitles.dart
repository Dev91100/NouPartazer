import 'package:flutter/material.dart';

class YellowTitles extends StatelessWidget 
{
  final String textContent;

  YellowTitles
  (
    {this.textContent,}
  );

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder
    (
      builder: (ctx, constraints)
      {
        return Container
        (
          child: Text
          (
            textContent,
            style: TextStyle
            (
              color: Colors.yellow[700],
              fontWeight: FontWeight.w800,
              fontSize: 38,
              // fontFamily: Roboto,
            ),
          )
        );       
      },
    );
  }
}