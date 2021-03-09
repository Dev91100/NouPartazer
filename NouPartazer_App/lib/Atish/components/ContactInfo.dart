import 'package:flutter/material.dart';

class ContactInfo extends StatelessWidget
{
  @required
  final String title;
  @required
  final double fontSize;
  @required
  final IconData icon;
  @required
  final double top;
  @required
  final int R, G, B;
  @required
  final double O;

  ContactInfo
  (
    {
      this.title,
      this.fontSize = 20,
      this.R = 0,
      this.G = 50,
      this.B = 193,
      this.O = 1,
      this.top = 15,
      this.icon,
    }
  );

  @override
  Widget build(BuildContext context)
  {
    return Container(
      margin: EdgeInsets.only
      (
        top: top,
        left: 20,
        right: 20
      ),
      child: Row
      (
        crossAxisAlignment: CrossAxisAlignment.center,
        children:
        [
          Container
          (
            margin: EdgeInsets.only
            (
              right: 10
            ),
            child: Icon
            (
              icon,
              size: 30,
              color: Color.fromRGBO(102, 102, 102, 1)
            ),
          ),

          Container
          (
            child: Text
            (
              title,
              style: TextStyle
              (
                fontSize: fontSize,
                color: Color.fromRGBO(R, G, B, O),
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ]
      ),
    );
  }
}