import 'package:flutter/material.dart';

class YellowTitlePara extends StatelessWidget 
{
  final String paragraph;
  final TextAlign textAlignment;

  YellowTitlePara
  (
    {
      this.paragraph,
      this.textAlignment,
    }
  );

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder
    (
      builder: (ctx, constraints)
      {
        return Container
        (
          // alignment: textAlignment,
          child: Text(
            // "Enter your email address associated with this account. We will send you a link to reset your password.",
            paragraph,
            textAlign: textAlignment,
            style: TextStyle
            (    
              fontWeight: FontWeight.w500,
              fontSize: 23,
            ),
          )
        );       
      },
    );
  }
}