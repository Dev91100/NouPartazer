import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FieldTitle extends StatelessWidget
{
  final String fieldTitle;
  final int R, G, B;
  final double O;
  final double top, right, bottom, left;

  FieldTitle
  (
    {
      this.fieldTitle,
      this.R = 0,
      this.G = 0,
      this.B = 0,
      this.O = 1,
      this.top = 0.03,
      this.right = 0.062,
      this.bottom = 0.001,
      this.left = 0.062,
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
          margin: EdgeInsets.only
          (
            right: screen.size.width * right,
            left: screen.size.width * left,
            // top: screen.size.height * top + screen.padding.top,
            bottom: screen.size.height * bottom,
          ),
          child: Text
          (
            fieldTitle,
            style: GoogleFonts.roboto
            (
              textStyle: TextStyle
              (
                fontWeight: FontWeight.w700,
                fontSize: 21,
                color: new Color.fromRGBO(R, G, B, O),
              ),
            ),
            // textAlign: TextAlign.center,
          ),
        );
      } 
    );
  }
}