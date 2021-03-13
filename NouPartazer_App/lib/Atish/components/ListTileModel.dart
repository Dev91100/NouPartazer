import 'package:flutter/material.dart';

class ListTileModel extends StatelessWidget 
{
  final IconData leadingIcon;
  final String titleText;
  final String subtitleText;
  final IconData trailingIcon;
  final onTap;

  ListTileModel
  (
    {
      this.leadingIcon,
      this.titleText,
      this.subtitleText,
      this.trailingIcon,
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
        color: Colors.black,
        size: 30.0,
      ),

      title: Text
      (
        titleText,
        style: TextStyle
        (
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),

      subtitle: Text
      (
        subtitleText,
        style: TextStyle
        (
          fontSize: 13.0,
        ),
      ),

      trailing: Icon
      (
        trailingIcon,
        color: Color.fromRGBO(41, 90, 245, 1),
        size: 50.0,
      ),
      
      onTap: ()
      {
        //open change password
      },
    );
  }
}