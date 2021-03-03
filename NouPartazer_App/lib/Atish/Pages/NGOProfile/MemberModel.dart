import 'package:flutter/material.dart';

import './Member.dart';
import './MemberList.dart';
import 'package:NouPartazer_App/Koomalai/src/Settings/Setting.dart';
import 'package:NouPartazer_App/Atish/components/EditIconButton.dart';

class MemberModel extends StatelessWidget 
{
  final List<Member> members = memberList;

  @override
  Widget build(BuildContext context)
  {
    return LayoutBuilder
    (
      builder: (ctx, constraints)
      {
        return Container
        (
          height: 300,
          child: ListView
          (
            shrinkWrap: true,
            padding: const EdgeInsets.only
            (
              top: 0
            ),

            children: 
              members.map((mem)
              {
                return Container
                (
                  margin: EdgeInsets.only
                  (
                    // top: top,
                    left: 20,
                    right: 20,
                  ),
                  child: Container
                  (
                    margin: EdgeInsets.only
                    (
                      top: 10,
                      bottom: 5
                    ),
                    child: RaisedButton
                    (
                      color: Colors.white,
                      elevation: 2,
                      shape: RoundedRectangleBorder
                      (
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),

                      child: Padding
                      (
                        padding: const EdgeInsets.only
                        (
                          left: 0,
                          right: 0,
                          top: 10,
                          bottom: 10,
                        ),
                        
                        child: Row
                        (
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:
                          [
                            Container
                            (
                              margin: EdgeInsets.only
                              (
                                right: 10
                              ),
                              width: 70.0,
                              height: 70.0,
                              decoration: BoxDecoration
                              (
                                image: DecorationImage
                                (
                                  image: AssetImage(mem.image),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(80.0),
                              ),
                            ),

                            Expanded
                            (
                              child: Container
                              (
                                child: Column
                                (
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: 
                                  [
                                    SingleChildScrollView
                                    (
                                      scrollDirection: Axis.horizontal,
                                      child: Container
                                      (
                                        child: Text
                                        (
                                          mem.name,
                                          style: TextStyle
                                          (
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                            color: Color.fromRGBO(0, 50, 193, 1),
                                          ),
                                        ),
                                      ),
                                    ),
                                    
                                    Container(
                                      child: SingleChildScrollView
                                      (
                                        scrollDirection: Axis.horizontal,
                                        child: Text
                                        (
                                          mem.position,
                                          style: TextStyle
                                          (
                                            fontSize: 18,
                                            color: Color.fromRGBO(102, 102, 102, 1),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),

                            EditIconButton
                            (
                              openPage: Settings(),
                              isModalPage: false,
                              icon: Icons.delete_outlined,
                              height: 40,
                              width: 40,
                              left: 0,
                              top: 0,
                              right: 0,
                              bottom: 0,
                              size: 26,
                              hasShadow: false,
                              R: 212, G: 0, B: 0, O: 1
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
                              return Settings();
                            },
                          ),
                        );
                      },
                    ),
                  ),
                );
              }).toList(),
          ),
        );
      }  
    );
  }
}