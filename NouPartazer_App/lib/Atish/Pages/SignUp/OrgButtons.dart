import 'package:flutter/material.dart';

class OrgButtons extends StatelessWidget
{
  @required
  final IconData icon;
  @required
  final String title;
  @required
  final Widget openPage;

  OrgButtons
  (
    {
      this.icon,
      this.title,
      this.openPage
    }
  );

  @override
  Widget build(BuildContext context)
  {
    final screen = MediaQuery.of(context).size;

    return Container(
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
      
      child: FlatButton
      (
        color: Colors.white,
        minWidth: screen.width * 0.5,
        shape: RoundedRectangleBorder
        (
          borderRadius: BorderRadius.circular(20),
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
                return openPage;
              },
            ),
          );
        },
      ),
    );
  }
}
