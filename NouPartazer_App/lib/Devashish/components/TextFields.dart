import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {

  // final formKey = GlobalKey<FormState>();
  // final defaultTextController = TextEditingController();
  final double fieldHeight;
  final double rightConstr;
  final double bottomConstr;
  final double leftConstr;
  final IconData thesuffixIcon;
  final IconData theprefixIcon;
  final TextEditingController textFieldControllerName;
  final int maxLines;
  final TextInputType inputType;
  double prefixIconMaxH, prefixIconMaxW, suffixIconMaxH, suffixIconMaxW;
  bool hasPrefixIcon, hasSuffixIcon, isPassword;
  // final InputDecoration iconPlacement;

  TextFields
  (
    {
      this.fieldHeight = 0.045,
      this.rightConstr = 0.062,
      this.bottomConstr = 0.01,
      this.leftConstr = 0.062,
      this.thesuffixIcon,
      this.theprefixIcon,
      this.textFieldControllerName,
      this.maxLines = 1,
      this.inputType,
      this.prefixIconMaxH = 0,
      this.prefixIconMaxW = 6,
      this.suffixIconMaxH = 0,
      this.suffixIconMaxW = 6,
      this.hasPrefixIcon = false,
      this.hasSuffixIcon = false,
      this.isPassword =false,
      // this.iconPlacement,
    }
  );

  

  checkIconPlacement()
  {
    if (theprefixIcon != null)
    {
      hasPrefixIcon = true;
      prefixIconMaxH = 28;
      prefixIconMaxW = 28;

    }
    if (thesuffixIcon !=null)
    {
      hasSuffixIcon = true;
      suffixIconMaxH = 28;
      suffixIconMaxW = 28;
    }
  }

  @override
  Widget build(BuildContext context) 
  {
    checkIconPlacement();
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
            obscureText: isPassword,
            style: TextStyle
            (
              fontSize: 20,
            ),
            // onEditingComplete: (),
            controller: textFieldControllerName,
            keyboardType: inputType,
            maxLines: maxLines,
            // decoration: iconPlacement,
            decoration: InputDecoration
            (           
              contentPadding: EdgeInsets.all(7),
              border: const OutlineInputBorder(),
              suffixIcon: Icon(thesuffixIcon),  
              prefixIcon: Icon(theprefixIcon),   
              prefixIconConstraints: BoxConstraints(maxHeight: prefixIconMaxH, maxWidth: prefixIconMaxW),
              suffixIconConstraints: BoxConstraints(maxHeight: suffixIconMaxH, maxWidth: suffixIconMaxW),
            ),
            // decoration: checkIconPlacement(),
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