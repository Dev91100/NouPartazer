import 'package:flutter/material.dart';

class EditPhotoButton extends StatelessWidget {
  final Widget nextPage;

  EditPhotoButton(this.nextPage);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (ctx, constraints)
        {
          return Container
          (
            margin: EdgeInsets.all(constraints.maxHeight * 0.05),
            height: 55,
            width: 55,
            constraints: BoxConstraints
            (
              minWidth: 55,
              minHeight: 55,
            ),
            decoration: BoxDecoration
            (
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow:
              [
                BoxShadow
                (
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),

            child: RaisedButton
            (
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
                  builder: ((builder) => nextPage)
                );  
              },
              child: Icon
              (
                Icons.create,
                color: Color.fromRGBO(102, 102, 102, 1),
                size: 26,
              ),
            ),
          );
      }
    );
  }
}