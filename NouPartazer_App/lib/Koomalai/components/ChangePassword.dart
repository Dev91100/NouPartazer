import 'package:NouPartazer_App/Koomalai/components/text_field_change_password.dart';
import 'package:flutter/material.dart';
import 'package:NouPartazer_App/Koomalai/components/text_field_container.dart';
import 'package:NouPartazer_App/Koomalai/constants.dart';

class ChangePasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const ChangePasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldChangePassword(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor:Colors.black54,
        decoration: InputDecoration(
          hintText: "ENTER OLD PASSWORD",
          hintStyle: TextStyle(color: Colors.black54,fontSize: 15,fontFamily: "risotto"),
          prefixIcon: Icon(
            Icons.lock_outline,
            color: Colors.black54,
          ),
          /*suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),*/

          /*border: InputBorder.none,*/

        ),
      ),
    );
  }
}