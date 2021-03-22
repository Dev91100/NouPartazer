import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class Checkboxes extends StatefulWidget
{

  final String option;
  final double fontSize;
  Checkboxes
  (
    {
      this.option,
      this.fontSize = 20,
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
          fontSize: widget.fontSize,
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