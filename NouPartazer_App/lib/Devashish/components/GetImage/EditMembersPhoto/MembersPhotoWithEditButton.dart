import 'package:flutter/material.dart';
import 'package:noupartazer_app/Atish/components/Buttons/RoundIconButton.dart';

class MembersPhotoWithEditButton extends StatelessWidget
{
  final FileImage fileImage;
  final Function onPress;

  MembersPhotoWithEditButton
  (
    {
      this.fileImage,
      this.onPress
    }
  );

  @override
  Widget build(BuildContext context)
  {
    return Container
    (
      margin: EdgeInsets.only(bottom: 30),
      child: Stack
      (
        children:
        [
          (fileImage != null) ?
          CircleAvatar
          (
            radius: 60.0,
            backgroundImage: fileImage,
          ) : CircleAvatar
          (
            radius: 60.0,
            backgroundColor: Color.fromRGBO(242, 242, 242, 1),
          ),

          RoundIconButton
          (
            isPage: true,
            icon: Icons.edit_outlined,
            hasSuperPress: true,
            onSuperPress: onPress,
          ),
        ]
      ),
    );
  }
}