import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider
    (
      color: Color.fromRGBO(102, 102, 102, 1),
      height: 60,
      thickness: 1,
      indent: 20,
      endIndent: 20,
    );
  }
}