import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider
    (
      color: Color.fromRGBO(102, 102, 102, 0.3),
      height: 45,
      thickness: 1,
      indent: 20,
      endIndent: 20,
    );
  }
}