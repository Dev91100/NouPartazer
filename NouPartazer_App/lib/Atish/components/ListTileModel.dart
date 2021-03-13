import 'package:flutter/material.dart';

class ListTileModel extends StatelessWidget 
{
  final IconData leadingIcon;
  final int leadingR, leadingG, leadingB;
  final double leadingO;
  final String titleText;
  final int textR, textG, textB;
  final double textO;
  final String subtitleText;
  final IconData trailingIcon;
  final int trailingR, trailingG, trailingB;
  final double trailingO;
  final onTap;

  ListTileModel
  (
    {
      this.leadingIcon,
      this.titleText,
      this.subtitleText,
      this.trailingIcon,
      this.trailingR = 0, this.trailingG = 0, this.trailingB = 0, this.trailingO = 1,
      this.leadingR = 0, this.leadingG = 0, this.leadingB = 0, this.leadingO = 1,
      this.textR = 0, this.textG = 0, this.textB = 0, this.textO = 1,
      this.onTap,
    }
  );

  @override
  Widget build(BuildContext context)
  {
    return ListTile
    (
      leading: Icon
      (
        leadingIcon,
        color: Color.fromRGBO
        (
          leadingR,
          leadingG,
          leadingB,
          leadingO,
        ),
        size: 35,
      ),

      title: Text
      (
        titleText,
        style: TextStyle
        (
          color: Color.fromRGBO(textR, textG, textB, textO),
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),

      subtitle: (subtitleText!= null) ?
      Text
      (
        subtitleText,
        style: TextStyle
        (
          fontSize: 13.0,
        ),
      ) : null,

      trailing: Icon
      (
        trailingIcon,
        color: Color.fromRGBO
        (
          trailingR,
          trailingG,
          trailingB,
          trailingO,
        ),
        size: 35,
      ),
      
      onTap: ()
      {
        //open change password
      },
    );
  }
}