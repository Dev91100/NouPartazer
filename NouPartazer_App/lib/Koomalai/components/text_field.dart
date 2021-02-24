import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  final Widget child;
  const TextFields( {
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0,horizontal: 25.0),
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
      width: size.width *0.9 ,
      decoration: BoxDecoration(
        /*color: kPrimaryLightColor,*/
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color:Colors.black, width: 1.0)
      ),
      child: child,
    );
  }
}
