import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:NouPartazer_App/Devashish/components/FieldTitle.dart';

class Checkboxes extends StatefulWidget {

  final String option;
  Checkboxes
  (
    {
      this.option,
    }
  );

  @override
  _CheckboxesState createState() => _CheckboxesState();
}

class _CheckboxesState extends State<Checkboxes> {
  bool checkboxValueB = false;
  
  // final String option;
  // _CheckboxesState
  // (
  //   this.option,
  // );

  @override
  Widget build(BuildContext context) 
  {

    // final screen = MediaQuery.of(context);

    return LayoutBuilder
    (
      builder: (ctx, constraints)
      {
        return Container(

          margin: EdgeInsets.only
          (
            left: constraints.maxWidth * 0.03,
          ),

          child: Row
          (
            mainAxisSize: MainAxisSize.min,
            children: 
            [
              Checkbox
              (
                value: checkboxValueB,
                onChanged: (value)
                {
                  setState(() 
                  {
                    checkboxValueB = value;
                  });
                },
              ),

              FieldTitle(fieldTitle: widget.option, left: 0.0),
              // Text('Perishable Food'),
            ],
          ),
        );
      }
    );
  }
}