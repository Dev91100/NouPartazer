import 'package:flutter/material.dart';


class LongText extends StatelessWidget {
  @required
  final String title;

  final double fontSize;
  final double top;
  final int R, G, B;
  final double O;

  LongText
  (
    {
      this.title,
      this.fontSize = 23,
      this.top = 0,
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
              left: 20,
              right: 20,
            ),
            child: 
            Text
            (
              title,
              overflow: TextOverflow.visible,
              style: TextStyle
              (
                color: Color.fromRGBO(R, G, B, O),
                fontWeight: FontWeight.w400,
                fontSize: fontSize,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
