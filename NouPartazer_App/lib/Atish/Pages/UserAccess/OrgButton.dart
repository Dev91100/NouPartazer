import 'package:flutter/material.dart';

class OrgButton
{
  @required
  final IconData icon;
  @required
  final String title;
  @required
  final Widget onPress;

  OrgButton
  (
    {
      this.icon,
      this.title,
      this.onPress
    }
  );

  Container buildWidget(BuildContext context)
  {
    return Container
    (
      decoration: BoxDecoration
      (
        boxShadow:
        [
          BoxShadow
          (
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      
      child: TextButton
      (
        style: TextButton.styleFrom
        (
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder
          (
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        
        child: FittedBox
        (
          fit: BoxFit.contain,
          child: Column
          (
            children: 
            [
              Icon
              (
                icon,
                color: Color.fromRGBO(0, 50, 193, 1),
                size: 55
              ),
              Text
              (
                title,
                style: TextStyle
                (
                  color: Color.fromRGBO(0, 50, 193, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                ),
              ),
            ],
          ),
        ),

        onPressed: ()
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
        },
      ),
    );
  }
}
