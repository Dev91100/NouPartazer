import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget
{
  final double indent, endIndent;
  final double height;

  CustomDivider
  (
    {
      this.indent,
      this.endIndent,
      this.height = 45,
    }
  );

  @override
  Widget build(BuildContext context)
  {
    return Divider
    (
      color: Color.fromRGBO(102, 102, 102, 0.3),
      height: height,
      thickness: 1,
      indent: indent,
      endIndent: endIndent,
    );
  }
}