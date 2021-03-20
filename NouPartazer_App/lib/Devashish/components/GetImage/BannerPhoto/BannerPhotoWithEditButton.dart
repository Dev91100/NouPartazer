import 'package:flutter/material.dart';
import 'package:noupartazer_app/Atish/components/Buttons/RoundPhotoButton.dart';

class BannerPhotoWithEditButton extends StatelessWidget
{
  final screen;
  final FileImage fileImage;
  final BoxConstraints constraints;
  final Function onPress;

  BannerPhotoWithEditButton
  (
    {
      this.screen,
      this.fileImage,
      this.constraints,
      this.onPress,
    }
  );

  @override
  Widget build(BuildContext context)
  {
    return Container
    (
      width: screen.width,
      height: screen.height * 0.3,
      
      decoration: (fileImage != null) ?
      BoxDecoration
      (
        image: DecorationImage
        (
          image: fileImage,
          fit: BoxFit.cover
        ),
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

      child: Align
      (
        alignment: Alignment.bottomRight,
        
        child: EditPhotoButton
          (
            isModalPage: true,
            hasSuperPress: true,
            onSuperPress: onPress,
          )
      ),
    );
  }
}