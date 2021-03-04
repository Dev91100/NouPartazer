import 'package:flutter/material.dart';

class EditPhotoButton extends StatelessWidget {
  final double elevation;
  final Widget openPage;

  EditPhotoButton
  (
    {
      this.openPage,
      this.elevation = 2,
    }
  );

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (ctx, constraints)
        {
          return Container
          (
            margin: EdgeInsets.fromLTRB
            (
              constraints.maxHeight * 0.05,
              constraints.maxHeight * 0.05,
              constraints.maxHeight * 0.07,
              constraints.maxHeight * 0.05,
            ),
            height: 40,
            width: 40,
            constraints: BoxConstraints
            (
              minWidth: 40,
              minHeight: 40,
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