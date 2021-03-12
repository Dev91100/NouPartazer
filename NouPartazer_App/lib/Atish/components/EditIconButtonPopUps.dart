import 'package:flutter/material.dart';

class EditIconButtonPopUps extends StatelessWidget {
  @required
  final Widget openPage;
  @required
  final bool isModalPage;
  @required
  final IconData icon;
  @required
  final double height, width;
  @required
  final double left, top, right, bottom;
  final double size;
  final double elevation;

  final int R, G, B;
  final double O;
  final Function press;

  EditIconButtonPopUps
  (
    {
      this.openPage,
      this.isModalPage,
      this.icon,
      this.height,
      this.width,
      this.left,
      this.top,
      this.right,
      this.bottom,
      this.size,
      this.elevation = 2,
      this.R = 102,
      this.G = 102,
      this.B = 102,
      this.O = 1,
      this.press,
    }
  );

  @override
  Widget build(BuildContext context)
  {
    return LayoutBuilder
    (
        builder: (ctx, constraints)
        {
          return Container
          (
            margin: EdgeInsets.only
            (
              left: left,
              top: top,
              right: right,
              bottom: bottom
            ),
            height: height,
            width: width,
            constraints: BoxConstraints
            (
              minWidth: height,
              minHeight: width,
            ),
            decoration: BoxDecoration
            (
              color: Colors.white,
              shape: BoxShape.circle,
            ),

            child: RaisedButton
            (
              elevation: elevation,
              padding: EdgeInsets.all(0),
              color: Colors.white,
              shape: RoundedRectangleBorder
              (
                borderRadius: BorderRadius.circular(50),
              ),
              // If isModal is true then the page is a popup and the first function is executed else
              // the second function is executed
              onPressed: press,
              child: Icon
              (
                icon,
                color: Color.fromRGBO(R, G, B, O),
                size: size,
              ),
            ),
          );
      }
    );
  }
}