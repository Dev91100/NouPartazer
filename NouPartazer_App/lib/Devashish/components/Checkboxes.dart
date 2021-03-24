import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:noupartazer_app/Devashish/Global.dart';


class Checkboxes extends StatefulWidget
{

  final String option;
  final double fontSize;
  Checkboxes
  (
    {
      this.option,
      this.fontSize,
    }
  );

  @override
  _CheckboxesState createState() => _CheckboxesState();
}

class _CheckboxesState extends State<Checkboxes>
{
  bool checkedValue = false;

  @override
  Widget build(BuildContext context) 
  {
    return CheckboxListTile
    (
      dense: true,
      contentPadding: EdgeInsets.all(0),

      title: Text
      (
        widget.option,
        style: TextStyle
        (
          fontSize: Global().normalText,
        ),
      ),
      value: checkedValue,
      onChanged: (newValue)
      {
        setState(()
        {
          checkedValue = newValue;
        });
      },
      controlAffinity: ListTileControlAffinity.leading, //  <-- leading Checkbox
    );
  }
}