import 'package:flutter/material.dart';

import 'package:noupartazer_app/Pages/NGOProfile/Member.dart';
import 'package:noupartazer_app/Pages/NGOProfile/MemberList.dart';
import 'package:noupartazer_app/components/Text/SmallText.dart';
import 'package:noupartazer_app/components/Buttons/RoundIconButton.dart';
import 'package:noupartazer_app/Global.dart';

class MemberModel extends StatelessWidget
{
  final List<Member> members = memberList;
  final onPressDelete;
  final onPressEdit;
  final bool isPopUpPage;
  final bool isModalPage;
  final bool isPage;
  final scrollModalSheet;

  final bool isEditable;

  MemberModel
  (
    {
      this.onPressDelete,
      this.onPressEdit,
      this.isPopUpPage = false,
      this.isModalPage = false,
      this.isPage = false,
      this.isEditable = false,
      this.scrollModalSheet = true,
    }
  );

  @override
  Widget build(BuildContext context)
  {
    final screen = MediaQuery.of(context).size;
    return LayoutBuilder
    (
      builder: (ctx, constraints)
      {
        return Container
        (
          height: screen.height * 0.6,
          child: ListView.builder
          (
            itemCount: memberList.length,
            shrinkWrap: true,
            padding: const EdgeInsets.only
            (
              top: 0
            ),

            itemBuilder: (BuildContext context, int index)
            {
              return Container
              (
                margin: EdgeInsets.only
                (
                  bottom: Global().normalSpacing,
                ),
                child: ElevatedButton
                (
                  style: ElevatedButton.styleFrom
                  (
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    shape: RoundedRectangleBorder
                    (
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
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
                              image: AssetImage(memberList[index].image),
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
                                    child: SmallText
                                    (
                                      text: memberList[index].name,
                                      textColor: Color.fromRGBO(0, 50, 193, 1),
                                    ),
                                  ),
                                ),
                                
                                Container
                                (
                                  child: SingleChildScrollView
                                  (
                                    scrollDirection: Axis.horizontal,
                                    child: SmallText
                                    (
                                      text: memberList[index].position,
                                      textColor: Color.fromRGBO(102, 102, 102, 1),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),

                        (isEditable) ? RoundIconButton
                        (
                          onPress: onPressDelete,
                          isPopUpPage: isPopUpPage,
                          isModalPage: isModalPage,
                          isPage: isPage,
                          icon: Icons.delete_outlined,
                          height: 40,
                          width: 40,
                          elevation: 0,
                          iconColor: Color.fromRGBO(212, 0, 0, 1),
                        ) : Container(),
                      ],
                    ),
                  ),
                  onPressed: () 
                  {
                    (isEditable) ? showModalBottomSheet
                    (
                      isScrollControlled: scrollModalSheet, // Make whole bottom sheet scroll when set to true, instead of scrolling only the elements inside
                      shape: RoundedRectangleBorder
                      (
                        borderRadius: BorderRadius.only
                        (
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        )
                      ),
                      context: context,
                      builder: ((builder) => onPressEdit)
                    ) : Container();
                  },
                ),
              );
            }
          ),
        );
      }  
    );
  }
}