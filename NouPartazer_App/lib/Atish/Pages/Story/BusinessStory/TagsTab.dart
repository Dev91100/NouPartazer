import 'package:flutter/material.dart';

class TagsTab extends StatelessWidget
{
  @required
  final String data;

  TagsTab({this.data});

  @override
  Widget build(BuildContext context)
  {
    return Container
    (
      margin: EdgeInsets.fromLTRB(0, 5, 10, 5),
      padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
      decoration: BoxDecoration
      (
        color: new Color.fromRGBO(255, 248, 97, 0.2),
        border: Border.all
        (
          color: new Color.fromRGBO(245, 197, 41, 1),
          width: 1.5
        ),
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      child:
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
            child: Text
            (
              data,
              style: TextStyle
                (
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
            ),
          ),
        ],
      ),
    );
  }
}