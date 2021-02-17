import 'package:NouPartazer_App/Koomalai/components/text_field_change_password.dart';
import 'package:flutter/material.dart';
import 'package:NouPartazer_App/Koomalai/components/text_field_container.dart';
import 'package:NouPartazer_App/Koomalai/constants.dart';

class CreateNewPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const CreateNewPasswordField({
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
          hintText: "CREATE NEW PASSWORD",
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
