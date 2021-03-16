import 'package:flutter/material.dart';
import 'package:noupartazer_app/Koomalai/components/text_field_container.dart';
import 'package:noupartazer_app/Koomalai/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    return TextFieldContainer
    (
      child: TextField
      (
        obscureText: true,
        onChanged: onChanged,
        cursorColor: Colors.white,
        style: TextStyle
        (
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
        decoration: InputDecoration
        (
          hintText: "Password",
          hintStyle: TextStyle(color: Colors.white,fontSize: 20,),
          suffixIcon: Icon(
            Icons.lock_outline,
            color: Colors.white,
          ),
          border: InputBorder.none,
        ),

      ),
    );
  }
}
