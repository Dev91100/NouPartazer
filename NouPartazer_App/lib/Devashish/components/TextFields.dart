import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {

  // final formKey = GlobalKey<FormState>();
  // final defaultTextController = TextEditingController();
  final double fieldHeight;
  final double rightConstr;
  final double bottomConstr;
  final double leftConstr;
  final IconData thesuffixIcon;
  final TextEditingController textFieldControllerName;
  final int maxLines;
  final TextInputType inputType;

  TextFields
  (
    {
      this.fieldHeight = 0.045,
      this.rightConstr = 0.062,
      this.bottomConstr = 0.01,
      this.leftConstr = 0.062,
      this.thesuffixIcon,
      this.textFieldControllerName,
      this.maxLines = 1,
      this.inputType,
    }
  );

  @override
  Widget build(BuildContext context) 
  {
    final screen = MediaQuery.of(context);
    
    return LayoutBuilder
    (
      builder: (ctx, constraints)
      {
        return Container
        (
          // height: screen.size.height * fieldHeight,
          margin: EdgeInsets.only
          (
            right: constraints.maxWidth * rightConstr,
            // bottom: constraints.maxWidth * bottomConstr,
            left: constraints.maxWidth * leftConstr,
            bottom: screen.size.height * bottomConstr,
          ),
          child: TextFormField
          (
            style: TextStyle
            (
              fontSize: 20,
            ),
            // onEditingComplete: (),
            controller: textFieldControllerName,
            keyboardType: inputType,
            maxLines: maxLines,  
            decoration: InputDecoration
            (           
              contentPadding: EdgeInsets.all(10),
              border: const OutlineInputBorder(),
              // hintText: "Title",
              // prefixText: 'Hello world',
              // labelText: 'Hello',
              // errorText: "Invalid Email, Try Again",
              suffixIcon: Icon(thesuffixIcon),
              
            ),
            validator: (value) 
            {
              if (value.isEmpty) 
              {
                return "Please enter some text";
              }
              return null;
            },
          ),
        );
      }
    );
  }
}