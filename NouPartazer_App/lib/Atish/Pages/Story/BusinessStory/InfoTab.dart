import 'package:flutter/material.dart';

class InfoTab extends StatelessWidget
{
  @required
  final IconData icon;

  final String date;

  InfoTab({this.icon, this.date});

  @override
  Widget build(BuildContext context)
  {
    return Container
    (
      margin: EdgeInsets.fromLTRB(0,5,10,10),
      padding: EdgeInsets.fromLTRB(5,5,5,5),
      decoration: BoxDecoration
      (
        color: new Color.fromRGBO(255, 248, 97, 0.2),
        border: Border.all
        (
          color: new Color.fromRGBO(245, 197, 41, 1),
          width: 1.5
        ),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child:
      Row
      (
        children:
        [
          Icon
          (
            icon,
            color: new Color.fromRGBO(245, 197, 41, 1),
            size: 18,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(5,0,0,0),
            child: Text
            (
              date,
              style: TextStyle
                (
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white,
                ),
            ),
          ),
        ],
      ),
    );
  }
}