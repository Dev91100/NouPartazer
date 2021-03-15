import 'package:flutter/material.dart';

class ButtonIcon extends StatelessWidget
{
  final String text;
  final IconData icon;
  final double fontSize;
  final int R, G, B;
  final double O;

  ButtonIcon
  (
    {
      this.text,
      this.icon,
      this.fontSize = 18,
      this.R = 51,
      this.G = 51,
      this.B = 51,
      this.O = 1,
    }
  );

  @override
  Widget build(BuildContext context)
  {
    return RaisedButton
    (
      color: Colors.white,
      shape: RoundedRectangleBorder
      (
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row
      (
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: 
        [
          Container
          (
            padding: EdgeInsets.all(0),
            
            child: Icon
            (
              icon,
              color: Color.fromRGBO(R, G, B, 1),
              size: 26,
            ),
          ),
          Text
          (
            text,
            textAlign: TextAlign.center,
            style: TextStyle
            (
              color: Color.fromRGBO(R, G, B, 1),
              fontSize: fontSize
            )
          ),
        ],
      ),
      onPressed: (){}
    );
  }
}