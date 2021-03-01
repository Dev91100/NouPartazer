import 'package:flutter/material.dart';

import './Member.dart';
import './MemberList.dart';

class MemberModel extends StatelessWidget {
  final List<Member> members = memberList;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder
    (
      builder: (ctx, constraints)
      {
        return Container(
          height: 300,
          child: ListView
          (
            children: 
              members.map((mem)
              {
                return Card
                (
                  elevation: 2,
                  color: Colors.blue,
                  shape: RoundedRectangleBorder
                  (
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  ),

                  child: Row
                  (
                    children:
                    [
                      Container
                      (
                        margin: EdgeInsets.only
                        (
                          bottom: 0.0,
                          top: 5.0,
                          left:8.0
                        ),
                        width: 70.0,
                        height: 70.0,
                        decoration: BoxDecoration
                        (
                          image: DecorationImage
                          (
                            image: AssetImage("assets/JPEG/Photo.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(80.0),
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
          ),
        );
      }  
    );
  }
}