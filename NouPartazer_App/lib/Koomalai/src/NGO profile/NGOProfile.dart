import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:NouPartazer_App/Atish/components/EditIconButton.dart';
import 'package:NouPartazer_App/Atish/components/EditPhotoButton.dart';
import 'package:NouPartazer_App/Atish/components/SectionTitle.dart';
import 'package:NouPartazer_App/Atish/components/CustomDivider.dart';
import 'package:NouPartazer_App/Atish/components/LongText.dart';
import 'package:NouPartazer_App/Atish/components/SectionWithEditButton.dart';
import 'package:NouPartazer_App/Atish/components/ContactInfo.dart';
import 'package:NouPartazer_App/Atish/Pages/NGOProfile/MemberModel.dart';
import 'package:NouPartazer_App/Atish/Pages/Story/NGOStory/NGOStory.dart';
import 'package:NouPartazer_App/Atish/Pages/Story/NGOStory/NGOStoryList.dart';
import 'package:NouPartazer_App/Atish/Pages/Story/NGOStory/NGOStoryModelProfile.dart';
import 'package:NouPartazer_App/Koomalai/src/Settings/Setting.dart';
import 'package:NouPartazer_App/Koomalai/src/widget/bottomSheetWidget.dart';

class NGOProfile extends StatelessWidget
{
  final List<NGOStory> ngoStory = ngoStoryList;
  CreateAlertDialog(BuildContext context){
    return showDialog(context: context,builder: (context){
      return ButtonBarTheme
        (
          data: ButtonBarThemeData
            (
            alignment: MainAxisAlignment.center,
            buttonPadding: EdgeInsets.all(15),
            mainAxisSize: MainAxisSize.min,

          ),

          child: AlertDialog(
            shape: RoundedRectangleBorder
              (
              borderRadius: BorderRadius.circular(10),
            ),


            title: Row(
                children:<Widget>
                [
                  IconButton(
                    icon: Icon(Icons.close),
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.only(left: 240),
                    onPressed: () {
                      //Put your code here which you want to execute on close button click.
                      Navigator.of(context).pop();
                    },

                  ),

                ]
            ),

            contentPadding: EdgeInsets.only(left: 22, right: 30),
            content: Text('Are you sure you want to delete this member?',
                textAlign: TextAlign.center,
                style: TextStyle
                  (
                  //wordSpacing: 5,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  //color: Color.fromRGBO(0, 0, 0, 1),
                )

            ),


            actions: <Widget>[

              TextButton(
                child: Text("Cancel",
                    style: TextStyle
                      (
                      decoration:TextDecoration.underline,
                      color: Color.fromRGBO(102, 102, 102, 1),
                      fontSize: 20.0,

                    )
                ),

                onPressed: () {
                  //Put your code here which you want to execute on Yes button click.
                  Navigator.of(context).pop();
                },

              ),

              OutlinedButton(
                child: Text("Delete",
                  style: TextStyle
                    (
                    color: Color.fromRGBO(212, 0, 0, 1),
                    fontSize: 20.0,

                  ),
                ),
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.red[50],
                  side: BorderSide(color: Color.fromRGBO(212, 0, 0, 1), width: 1.5),
                  primary: Color.fromRGBO(212, 0, 0, 1),
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(7))),

                ),

                onPressed: () {
                  //Put your code here which you want to execute on Cancel button click.
                  Navigator.of(context).pop();

                },

              ),

            ],

          )
      );
    }
    );
  }
  @override
  Widget build(BuildContext context)
  {
    final screen = MediaQuery.of(context).size;

    return LayoutBuilder
    (
      builder: (ctx, constraints)
      {
        return Scaffold
        (
          body: SingleChildScrollView
          (
            child: Column
            (
              children:
              [
                Stack
                (
                  children:
                  [
                    Container
                    (
                      width: screen.width,
                      height: screen.height * 0.3,
                      decoration: BoxDecoration
                      (
                        image: DecorationImage
                        (
                          image: AssetImage('assets/JPEG/ManzerPartazerGroup.jpg'),
                          fit: BoxFit.cover,
                        ),
                        boxShadow:
                        [
                          BoxShadow
                          (
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 4,
                            blurRadius: 4,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),

                      child: Align
                      (
                        alignment: Alignment.bottomRight,
                        
                        child: EditPhotoButton
                          (
                            openPage: BottomSheetWidget()
                          )
                      ),
                    ),

                    Center
                    (
                      child: Container
                      (
                        margin: EdgeInsets.only
                        (
                          top: constraints.maxHeight * 0.19
                        ),
                        width: constraints.maxWidth * 0.4,
                        height: constraints.maxWidth * 0.4,

                        decoration: BoxDecoration
                        (
                          image: DecorationImage
                          (
                            image: AssetImage("assets/JPEG/Rectangle 12.jpg"),
                            fit: BoxFit.cover,
                          ),

                          borderRadius: BorderRadius.circular(150),
                          boxShadow:
                          [
                            BoxShadow
                            (
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 4,
                              blurRadius: 4,
                              offset: Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),

                        child: Align
                        (
                          alignment: Alignment.bottomRight,
                          
                          child: EditPhotoButton
                          (
                            openPage: BottomSheetWidget()
                          )
                        ),
                      ),
                    ),

                    Container
                    (
                      alignment: Alignment.bottomRight,

                      margin: EdgeInsets.only
                      (
                        top: screen.height * 0.31,
                      ),
                      child: EditIconButton
                      (
                        openPage: Settings(),
                        isModalPage: false,
                        icon: Icons.settings_outlined,
                        height: 50,
                        width: 50,
                        left: 10,
                        top: 10,
                        right: 20,
                        bottom: constraints.maxHeight * 0.015,
                        size: 35,
                      ),
                    ),
                  ],
                ),

                Column
                (
                  children:
                  [
                    SectionTitle
                    (
                      title: 'MY STORIES',
                    ),

                    NGOStoryModelProfile(),
                  ],
                ),
                
                CustomDivider(),

                Column
                (
                  children:
                  [
                    SectionWithEditButton
                    (
                      title: 'Manzer Partazer Test Test Test Test',
                      fontSize: 22,
                      R: 0, G: 50, B: 193, O: 1,
                      openPage: Settings(),
                    ),
                    
                    Align
                    (
                      alignment: Alignment.centerLeft,
                      child: Container
                      (
                        width: screen.width * 0.9,
                        child: SectionTitle
                        (
                          title: 'Food Sharing Project of Mauritius Mauritius Mauritius',
                          fontSize: 20, 
                          top: 15,
                          R: 51, G: 51, B: 51, O: 1,
                        ),
                      ),
                    ),

                    Container
                    (
                      margin: EdgeInsets.only
                      (
                        top: 10,
                        left: 20,
                        right: 20
                      ),
                      constraints: BoxConstraints
                      (
                        maxHeight: constraints.maxHeight * 0.25,
                      ),
                      child: LongText
                      (
                        title: "MANZER PARTAZER is the the first food sharing project of Mauritius. Our aim is to reduce the wastage of high quality ready to eat food by simply sharing it!"
                              "We ‘save’ food which would otherwise go to waste, such as buffet leftovers in hotels or restaurants, donating it to people in need through a very simple and no-cost food sharing system.or restaurants, donating it to people in need through a very simple and no-cost food sharing system.or restaurants, donating it to people in need through a very simple and no-cost food sharing system.or restaurants, donating it to people in need through a very simple and no-cost food sharing system.",
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        top: screen.height * 0.015,
                      ),
                    ),
                  ],
                ),

                CustomDivider(),

                Column
                (
                  children:
                  [
                    SectionWithEditButton
                    (
                      title: 'CONTACT INFO',
                      openPage: Settings(),
                    ),

                    ContactInfo
                    (
                    website: 'www.facebook.com',
                      top: 0,
                      icon: Icons.language_outlined,
                    ),
                    
                    ContactInfo
                    (
                      email: 'info@manzerpartazer.org',
                      icon: Icons.email_outlined,
                    ),

                    ContactInfo
                    (
                      phoneNumber: '+230 5820 7691',
                      icon: Icons.call_outlined,
                    )
                  ],
                ),

                CustomDivider(),

                Column
                (
                  children:
                  [
                    SectionWithEditButton
                    (
                      title: 'MEMBERS',
                      icon: Icons.add,
                      openPage: Settings(),
                    ),
                  ]
                ),

                MemberModel
                (
                  onPress:CreateAlertDialog(context)
                ),
              ],
            ),   
          )
        );
      }
    );
  }

  openurl()
  {
    String url1="https://manzerpartazer.org/";
    launch(url1);
  }
}
