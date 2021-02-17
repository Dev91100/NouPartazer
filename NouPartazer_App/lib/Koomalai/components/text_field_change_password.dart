import 'package:flutter/material.dart';
import 'package:NouPartazer_App/Koomalai/constants.dart';

class TextFieldChangePassword extends StatelessWidget {
  final Widget child;
  const TextFieldChangePassword({
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
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color:Colors.white, width: 2.5)
      ),
      child: child,
    );
  }
}
