import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  final RoundedRectangleBorder shape;
  const RoundedButton({
    Key key,
    this.text,
    this.press,
    this.color = Colors.black,
    this.textColor = Colors.white,
    this.shape,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: TextButton
        (
          style: TextButton.styleFrom
          (
            padding: EdgeInsets.symmetric(vertical: 9.0, horizontal: 50.0),
            backgroundColor: color,
            shape: shape,
          ),
          
          onPressed: press,

          child: Text(
            text,
            style: TextStyle(color: textColor, fontSize: 22.0),

          ),
        ),
      ),
    );
  }
}
