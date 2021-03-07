import 'package:flutter/material.dart';


class LongText extends StatelessWidget {
  @required
  final String title;

  final double fontSize;
  final FontWeight fontWeight;
  final double top, left, right;
  final int R, G, B;
  final double O;

  LongText
  (
    {
      this.title,
      this.fontSize = 23,
      this.top = 0,
      this.left = 20,
      this.right = 20,
      this.fontWeight = FontWeight.w400,
      this.R = 102,
      this.G = 102,
      this.B = 102,
      this.O = 1,
    }
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView
    (
      scrollDirection: Axis.vertical,
      child: Container
      (
        child: Align
        (
          alignment: Alignment.centerLeft,
          child: Container
          (
            margin: EdgeInsets.only
            (
              top: top,
              left: left,
              right: right,
            ),
            child: 
            Text
            (
              
              title,
              textAlign: TextAlign.justify,
              overflow: TextOverflow.visible,
              style: TextStyle
              (
                color: Color.fromRGBO(R, G, B, O),
                fontWeight: fontWeight,
                fontSize: fontSize,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
