import 'package:flutter/material.dart';
import 'package:noupartazer_app/Devashish/Global.dart';

class SectionTitle extends StatelessWidget {
  @required
  final String title;

  final double fontSize;
  final double top, left, right;
  final Color color;
  final Alignment align;

  SectionTitle
  (
    {
      this.title = 'This is a test',
      this.fontSize,
      this.top = 0,
      this.left = 20,
      this.right = 20,
      this.color = const Color.fromRGBO(0, 0, 0, 1),
      this.align = Alignment.centerLeft,
    }
  );

  @override
  Widget build(BuildContext context)
  {
    return Container
    (
      child: Align
      (
        alignment: align,
        child: SingleChildScrollView
        (
          scrollDirection: Axis.horizontal,
          child: Container
          (
            margin: EdgeInsets.only
            (
              top: top,
              left: left,
              right: right
            ),
            child: 
            Text
            (
              title,
              style: TextStyle
              (
                color: color,
                fontWeight: FontWeight.w800,
                fontSize: (fontSize != null) ? fontSize: Global().profileSectionTitle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
