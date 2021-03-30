import 'package:flutter/material.dart';

import 'package:noupartazer_app/Global.dart';

import 'package:noupartazer_app/components/SectionTitle.dart';

class ListTileModel extends StatelessWidget 
{
  final IconData leadingIcon;
  final String titleText;
  final String subtitleText;
  final IconData trailingIcon;
  final trailingButton;
  final double iconSize;

  final bool hasleadingIcon;
  final bool hastrailingIcon;
  final bool hasTrailingButton;

  final Color leadingColor;
  final Color textColor;
  final Color trailingColor;

  final bool isModalPage;
  final bool isPopUpPage;
  final bool isPage;
  final onPress;

  final VoidCallback onSuperPress;

  ListTileModel
  (
    {
      this.leadingIcon = Icons.help_outline,
      this.titleText,
      this.subtitleText,
      this.hastrailingIcon = true,
      this.hasleadingIcon = true,
      this.trailingIcon = Icons.help_outline,
      this.hasTrailingButton = false,
      this.trailingButton,
      this.trailingColor = const Color.fromRGBO(0, 0, 0, 1),
      this.leadingColor = const Color.fromRGBO(0, 0, 0, 1),
      this.textColor = const Color.fromRGBO(0, 0, 0, 1),
      this.isModalPage = false,
      this.isPopUpPage = false,
      this.isPage = false,
      this.onPress,
      this.onSuperPress,
      this.iconSize,
    }
  );

  @override
  Widget build(BuildContext context)
  {
    return ListTile
    (
      leading: (hasleadingIcon) ? Icon
      (
        leadingIcon,
        color: leadingColor,
        size: (iconSize != null) ? iconSize : Global().normalIcon,
      ) : null,

      title: SectionTitle
      (
        text: titleText,
        textColor: textColor,
        margin: EdgeInsets.only(bottom: 0),
      ),

      subtitle: (subtitleText!= null) ?
      Text
      (
        subtitleText,
        style: TextStyle
        (
          fontSize: Global().tinyText,
          fontWeight: FontWeight.w300,
        ),
      ) : null,

      trailing: (hastrailingIcon) ? Icon
      (
        trailingIcon,
        color: trailingColor,
        size: (iconSize != null) ? iconSize : Global().normalIcon,
      ) : (hasTrailingButton) ? trailingButton : null,
      
      onTap: (onSuperPress == null) ? ()
      {
        if(isPopUpPage)
          {
            showDialog
            (
              context: context,
              builder: (BuildContext context)
              {
                return onPress;
              }
            );
          }
          else if (isModalPage)
          {
            showModalBottomSheet
            (
              shape: RoundedRectangleBorder
              (
                borderRadius: BorderRadius.only
                (
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )
              ),
              context: context,
              builder: ((builder) => onPress)
            );
          }
          else if(isPage)
          {
            Navigator.push
            (
              context,
              MaterialPageRoute
              (
                builder: (context)
                {
                  return onPress;
                },
              ),
            );
          }
      } : () => onSuperPress(),
    );
  }
}