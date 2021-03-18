import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class SubTitle extends StatelessWidget
{
  final String subTitle;
  final int R, G, B;
  final double O;

  final double top;

  SubTitle
  (
    {
      this.subTitle,
      this.R = 0,
      this.G = 0,
      this.B = 0,
      this.O = 1,
      this.top = 0.02,
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
            top: screen.size.height * top,
            bottom: screen.size.height * 0.02
          ),
          child: Text
          (
            subTitle,
            style: GoogleFonts.roboto
            (
              textStyle: TextStyle
              (
                fontWeight: FontWeight.w900,
                fontSize: 22,
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