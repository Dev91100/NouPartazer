import 'package:flutter/material.dart';
import 'package:noupartazer_app/Devashish/Global.dart';




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
              color: Color.fromRGBO(245, 197, 41, 1),
              fontWeight: FontWeight.w800,
              fontSize: Global().yellowTitle,
              // fontFamily: Roboto,
            ),
          )
        );       
      },
    );
  }
}