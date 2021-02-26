import 'package:flutter/material.dart';

class EditPhotoButton extends StatelessWidget {
  final Widget nextPage;

  EditPhotoButton(this.nextPage);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      height: 60,
      width: 60,
      constraints: BoxConstraints
      (
        minWidth: 60,
        minHeight: 60,
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
          Icons.camera_alt,
          color: Color.fromRGBO(102, 102, 102, 1),
          size: 28.0,
        ),
      ),
    );
  }
}