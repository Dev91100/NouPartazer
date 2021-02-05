import 'package:flutter/material.dart';
import 'package:NouPartazer_App/Koomalai/components/text_field_container.dart';
import 'package:NouPartazer_App/Koomalai/constants.dart';

class RoundedDropDown extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedDropDown({
    Key key,
    this.hintText,
    this.icon = Icons.keyboard_arrow_down_outlined,
    this.onChanged, RoundedRectangleBorder shape,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          suffixIcon: Icon(
            icon,
            color: Colors.white,

          ),



          hintText: hintText,
          hintStyle: TextStyle(color: Colors.white,fontSize: 20,fontFamily: "risotto"),
          border: InputBorder.none,

          ),

      ),
      );



  }
}
