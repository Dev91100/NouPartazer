import 'package:flutter/material.dart';

class EditIconButton extends StatelessWidget {
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
  final bool hasShadow;

  final int R, G, B;
  final double O;

  EditIconButton
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
      this.hasShadow = true,
      this.R = 102,
      this.G = 102,
      this.B = 102,
      this.O = 1,
    }
  );

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
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
              boxShadow:
              [
                (hasShadow) ?
                BoxShadow
                (
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(0, 2), // changes position of shadow
                ) : 
                BoxShadow
                (
                  color: Colors.transparent.withOpacity(0),
                  spreadRadius: 0,
                  blurRadius: 0,
                  offset: Offset(0, 0),// changes position of shadow
                )
              ],
            ),

            child: FlatButton
            (
              padding: EdgeInsets.all(0),
              color: Colors.white,
              shape: RoundedRectangleBorder
              (
                borderRadius: BorderRadius.circular(50),
              ),
              // If isModal is true then the page is a popup and the first function is executed else
              // the second function is executed
              onPressed: () 
              {
                (isModalPage) ?
                showModalBottomSheet
                (
                  context: context,
                  builder: ((builder) => openPage)
                ) : 
                Navigator.push
                (
                  context,
                  MaterialPageRoute
                  (
                    builder: (context)
                    {
                      return openPage;
                    },
                  ),
                );
              },
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