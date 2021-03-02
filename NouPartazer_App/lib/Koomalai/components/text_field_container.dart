import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 1),
      width: size.width *0.9 ,
      decoration: BoxDecoration(
        /*color: kPrimaryLightColor,*/
        color: Color.fromRGBO(41, 90, 245, 1),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color:Colors.white, width: 2.5)
      ),
      child: child,
    );
  }
}
