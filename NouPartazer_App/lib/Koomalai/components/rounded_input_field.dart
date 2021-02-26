import 'package:flutter/material.dart';
import 'package:NouPartazer_App/Koomalai/components/text_field_container.dart';
import 'package:NouPartazer_App/Koomalai/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.mail_outline,
    this.onChanged, RoundedRectangleBorder shape,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return TextFieldContainer(
      child: TextField(
        style: TextStyle
        (
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          suffixIcon: Icon(
            icon,
            color: Colors.white,

          ),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.white,fontSize: 20,),
          border: InputBorder.none,

          ),

      ),
      );



  }
}
