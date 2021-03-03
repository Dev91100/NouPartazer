import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageTitle extends StatelessWidget
{
  final String title;
  final int R, G, B;
  final double O;

  final double top;

  PageTitle
  (
    {
      this.title,
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
        return Center(
          child: Container
          (
            margin: EdgeInsets.only
            (
              top: screen.size.height * top + screen.padding.top,
              bottom: screen.size.height * 0.02
            ),
            child: Text
            (
              title,
              style: GoogleFonts.comfortaa
              (
                textStyle: TextStyle
                (
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                  color: new Color.fromRGBO(R, G, B, O),
                ),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        );
      } 
    );
  }
}