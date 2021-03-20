import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget
{
  final String text;
  final IconData icon;
  final double fontSize;
  final Color color;

  CustomIconButton
  (
    {
      this.text,
      this.icon,
      this.fontSize = 18,
      this.color = const Color.fromRGBO(51, 51, 51, 1),
    }
  );

  @override
  Widget build(BuildContext context)
  {
    return ElevatedButton
    (
      style: ElevatedButton.styleFrom
      (
        primary: Colors.white,
        onPrimary: Colors.black,
        shape: RoundedRectangleBorder
        (
          borderRadius: BorderRadius.circular(5),
        ),
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
              color: color,
              size: 26,
            ),
          ),
          Text
          (
            text,
            textAlign: TextAlign.center,
            style: TextStyle
            (
              color: color,
              fontSize: fontSize
            )
          ),
        ],
      ),
      onPressed: (){}
    );
  }
}