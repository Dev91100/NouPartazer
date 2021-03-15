import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:NouPartazer_App/Devashish/components/TheBackButton.dart';

class PageTitle extends StatefulWidget implements PreferredSizeWidget
{
  final String text;
  final bool hasBackButton;
  final onPress;
  final Color textColor;
  final bool customBarColor;
  final Color barColor;

  PageTitle
  (
    {
      Key key,
      this.text,
      this.hasBackButton = false,
      this.onPress,
      this.textColor = const Color.fromRGBO(0, 0, 0, 1),
      this.customBarColor = false,
      this.barColor = const Color.fromRGBO(0, 0, 0, 1),
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
        Colors.transparent : widget.barColor,
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
              color: widget.textColor,
            ),
          ),
        ),
      );
    }
}