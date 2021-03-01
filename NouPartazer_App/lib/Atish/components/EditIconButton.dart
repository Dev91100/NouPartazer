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
                BoxShadow
                (
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
            ),

            child: RaisedButton
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
                color: Color.fromRGBO(102, 102, 102, 1),
                size: size,
              ),
            ),
          );
      }
    );
  }
}