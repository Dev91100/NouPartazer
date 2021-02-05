import 'package:flutter/material.dart';
import 'package:NouPartazer_App/Koomalai/components/text_field.dart';
import 'package:NouPartazer_App/Koomalai/components/text_field_container.dart';
import 'package:NouPartazer_App/Koomalai/constants.dart';

class RoundedInput extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInput({
    Key key,
    this.hintText,
    this.icon = Icons.mail_outline,
    this.onChanged, RoundedRectangleBorder shape, TextEditingController controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return TextFields(
      child: TextField(
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
         /* suffixIcon: Icon(
            icon,
            color: Colors.white,

          ),



          hintText: hintText,
          hintStyle: TextStyle(color: Colors.white,fontSize: 20,fontFamily: "risotto"),*/
          border: InputBorder.none,

          ),

      ),
      );



  }
}
