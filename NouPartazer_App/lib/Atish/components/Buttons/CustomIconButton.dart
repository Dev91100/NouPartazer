import 'package:flutter/material.dart';

import 'package:noupartazer_app/Devashish/Global.dart';

class CustomIconButton extends StatelessWidget
{
  final String text;
  final IconData icon;
  final double fontSize;
  final Color color;
  final double iconSize;

  CustomIconButton
  (
    {
      this.text,
      this.icon,
      this.fontSize,
      this.color = const Color.fromRGBO(51, 51, 51, 1),
      this.iconSize,
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
              size: (iconSize != null) ? iconSize: Global().smallIcon,
            ),
          ),
          Text
          (
            text,
            textAlign: TextAlign.center,
            style: TextStyle
            (
              color: color,
              fontSize: (fontSize != null) ? fontSize: Global().smallText,
            )
          ),
        ],
      ),
      onPressed: (){}
    );
  }
}