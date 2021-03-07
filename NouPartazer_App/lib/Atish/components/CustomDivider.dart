import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget
{
  final double height;

  CustomDivider
  (
    {
      this.height = 45,
    }
  );

  @override
  Widget build(BuildContext context) {
    return Divider
    (
      color: Color.fromRGBO(102, 102, 102, 0.3),
      height: height,
      thickness: 1,
      indent: 20,
      endIndent: 20,
    );
  }
}