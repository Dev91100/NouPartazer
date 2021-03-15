import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:NouPartazer_App/Devashish/components/TheBackButton.dart';

class PageTitle extends StatefulWidget implements PreferredSizeWidget
{
  final String text;
  final bool hasBackButton;
  final onPress;
  final int R, G, B;
  final double O;
  final bool customBarColor;
  final int BarR, BarG, BarB;
  final double BarO; 

  PageTitle
  (
    {
      Key key,
      this.text,
      this.hasBackButton = false,
      this.onPress,
      this.R = 0,
      this.G = 0,
      this.B = 0,
      this.O = 1,
      this.customBarColor = false,
      this.BarR = 0,
      this.BarG = 0,
      this.BarB = 0,
      this.BarO = 1,
    }
  ) : preferredSize = Size.fromHeight(kToolbarHeight), super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  @override
  _PageTitleState createState() => new _PageTitleState();
}

class _PageTitleState extends State<PageTitle>
{
    @override
    Widget build(BuildContext context)
    {
      return AppBar
      (
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: (!widget.customBarColor) ?
        Colors.transparent : Color.fromRGBO(widget.BarR, widget.BarG, widget.BarB, widget.BarO),
        elevation: 0,
        leading: (widget.hasBackButton) ?
        TheBackButton
        (
          press: ()
          {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context)
                {
                  return widget.onPress;
                },
              ),
            );            
          },
        ) : null,

        leadingWidth: (widget.hasBackButton) ? 80 : null,

        title: Text
        (
          widget.text, // Text Parameter
          style: GoogleFonts.comfortaa
          (
            textStyle: TextStyle
            (
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: new Color.fromRGBO(widget.R, widget.G, widget.B, widget.O),
            ),
          ),
        ),
      );
    }
}