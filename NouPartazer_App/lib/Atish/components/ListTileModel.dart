import 'package:flutter/material.dart';

class ListTileModel extends StatelessWidget 
{
  final IconData leadingIcon;
  final String titleText;
  final String subtitleText;
  final IconData trailingIcon;
  final trailingButton;
  final double titleSize;
  final double subTitleSize;
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

  final bool hasSuperPress;
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
      this.hasSuperPress = false,
      this.onSuperPress,
      this.titleSize = 18,
      this.subTitleSize = 13,
      this.iconSize = 35,
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
        size: 35,
      ) : null,

      title: Text
      (
        titleText,
        style: TextStyle
        (
          color: textColor,
          fontSize: titleSize,
          fontWeight: FontWeight.bold,
        ),
      ),

      subtitle: (subtitleText!= null) ?
      Text
      (
        subtitleText,
        style: TextStyle
        (
          fontSize: subTitleSize,
        ),
      ) : null,

      trailing: (hastrailingIcon) ? Icon
      (
        trailingIcon,
        color: trailingColor,
        size: iconSize,
      ) : (hasTrailingButton) ? trailingButton : null,
      
      onTap: (!hasSuperPress) ? ()
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