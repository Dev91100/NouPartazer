import 'package:flutter/material.dart';

import 'package:noupartazer_app/Koomalai/components/text_field.dart';


class RoundedInput extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  final TextEditingController controller;

  const RoundedInput({
    Key key,
    this.hintText,
    this.icon = Icons.mail_outline,
    this.onChanged, RoundedRectangleBorder shape, /*TextEditingController controller,
    TextEditingController regNumberctrl,namectrl,expertisectrl,sizectrl,addressctrl,phonectrl,websitectrl,emailctrl,passctrl,*/
    this.controller
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return TextFields(

      child: TextField(
        onChanged: onChanged,
        controller: controller,
        cursorColor: Colors.black,

        decoration: InputDecoration(
         /* suffixIcon: Icon(
            icon,
            color: Colors.white,

          ),*/
          labelText: hintText,


          hintText: hintText,
          hintStyle: TextStyle(color: Colors.white,fontSize: 20,),
          border: InputBorder.none,

          ),

      ),
      );



  }
}
