import 'package:flutter/material.dart';


class SectionTitle extends StatelessWidget {
  @required
  final String title;

  final double fontSize;
  final double top;
  final int R, G, B;
  final double O;

  SectionTitle
  (
    {
      this.title,
      this.fontSize = 23,
      this.top = 0,
      this.R = 0,
      this.G = 0,
      this.B = 0,
      this.O = 1,
    }
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align
      (
        alignment: Alignment.centerLeft,
        child: Container
        (
          margin: EdgeInsets.only
          (
            top: top,
            left: 20,
            right: 20
          ),
          child: 
          Text
          (
            title,
            overflow: TextOverflow.ellipsis,
            style: TextStyle
            (
              color: Color.fromRGBO(R, G, B, O),
              fontWeight: FontWeight.w900,
              fontSize: fontSize,
            ),
          ),
        ),
      ),
    );
  }
}
