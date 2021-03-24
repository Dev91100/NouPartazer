import 'package:flutter/material.dart';

import 'package:dotted_border/dotted_border.dart';

import 'package:noupartazer_app/Atish/components/Buttons/SmallButtonIconText.dart';

class DottedBoxWithUploadButton extends StatelessWidget
{
  final FileImage fileImage;
  final BoxConstraints constraints;
  final Function onPress;
  final String text;

  DottedBoxWithUploadButton
  (
    {
      this.fileImage,
      this.constraints,
      this.onPress,
      this.text = 'Upload Image'
    }
  );

  @override
  Widget build(BuildContext context)
  {
    final screen = MediaQuery.of(context).size;

    return Container
    (
      decoration: (fileImage != null) ?
      BoxDecoration
      (
        image: DecorationImage
        (
          image: fileImage,
          fit: BoxFit.cover
        )
      ) :
      BoxDecoration
      (
        color: Color.fromRGBO(242, 242, 242, 0.6),
      ),
      
      height: screen.height * 0.24,
      
      child: DottedBorder
      (
        strokeWidth: 1,
        dashPattern: [15, 8],
        radius: Radius.circular(4),
        borderType: BorderType.RRect,
        child: ClipRRect
        (
        borderRadius: BorderRadius.all(Radius.circular(12)),
          child: Center
          (
            child: Container
            (
              child: SmallButtonIconText
              (
                text: text,
                hasIcon: false,
                elevation: 0,
                onSuperPress: onPress,
              ),
            ),
          )
        )
      ),
    );
  }
}