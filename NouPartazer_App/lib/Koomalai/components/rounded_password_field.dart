import 'package:flutter/material.dart';
import 'package:NouPartazer_App/Koomalai/components/text_field_container.dart';
import 'package:NouPartazer_App/Koomalai/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: "Password",
          hintStyle: TextStyle(color: Colors.white,fontSize: 20,fontFamily: "risotto"),
          suffixIcon: Icon(
            Icons.lock_outline,
            color: Colors.white,
          ),
          /*suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),*/

          border: InputBorder.none,
        ),
      ),
    );
  }
}
