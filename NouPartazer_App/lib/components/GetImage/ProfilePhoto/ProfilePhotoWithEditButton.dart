import 'package:flutter/material.dart';
import 'package:noupartazer_app/components/Buttons/RoundPhotoButton.dart';

class ProfilePhotoWithEditButton extends StatelessWidget
{
  final FileImage fileImage;
  final BoxConstraints constraints;
  final Function onPress;

  final bool isEditable;

  ProfilePhotoWithEditButton
  (
    {
      this.fileImage,
      this.isEditable = false,
      this.constraints,
      this.onPress
    }
  );

  @override
  Widget build(BuildContext context)
  {
    return Center
    (
      child: Container
      (
        margin: EdgeInsets.only
        (
          top: constraints.maxHeight * 0.19
        ),
        width: constraints.maxWidth * 0.4,
        height: constraints.maxWidth * 0.4,

        decoration: (fileImage != null) ?
        BoxDecoration
        (
          image: DecorationImage
          (
            image: fileImage,
            fit: BoxFit.cover
          ),
          borderRadius: BorderRadius.circular(150),
          boxShadow:
          [
            BoxShadow
            (
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 4,
              blurRadius: 4,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ) :
        BoxDecoration
        (
          color: Color.fromRGBO(242, 242, 242, 1),
          borderRadius: BorderRadius.circular(150),
          boxShadow:
          [
            BoxShadow
            (
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 4,
              blurRadius: 4,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),

        child: (isEditable) ? Align
        (
          alignment: Alignment.bottomRight,
          
          child: EditPhotoButton
          (
            isModalPage: true,
            hasSuperPress: true,
            onSuperPress: onPress,
          )
        ) : Container(),
      ),
    );
  }
}