import 'package:flutter/material.dart';

class EditPhotoButton extends StatelessWidget
{
  final double elevation;
  final Widget openPage;
  final double L, T, R, B;
  final double height;
  final double width;

  EditPhotoButton
  (
    {
      this.openPage,
      this.elevation = 2,
      this.L = 0.05,
      this.T = 0.05,
      this.R = 0.07,
      this.B = 0.05,
      this.height = 40,
      this.width = 40,
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
            margin: EdgeInsets.fromLTRB
            (
              constraints.maxHeight * L,
              constraints.maxHeight * T,
              constraints.maxHeight * R,
              constraints.maxHeight * B,
            ),
            height: height,
            width: width,
            constraints: BoxConstraints
            (
              minWidth: width,
              minHeight: height,
            ),
            decoration: BoxDecoration
            (
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow:
              [
                BoxShadow
                (
                  color: Colors.black.withOpacity(0.15),
                  spreadRadius: 3,
                  blurRadius: 3,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
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
              onPressed: () 
              {
                showModalBottomSheet
                (
                  context: context,
                  builder: ((builder) => openPage)
                );  
              },
              child: Icon
              (
                Icons.create_outlined,
                color: Color.fromRGBO(102, 102, 102, 1),
                size: 26,
              ),
            ),
          );
      }
    );
  }
}