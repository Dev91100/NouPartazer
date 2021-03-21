import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/components/SectionTitle.dart';
import 'package:noupartazer_app/Atish/components/CustomDivider.dart';
import 'package:noupartazer_app/Atish/components/LongText.dart';
import 'package:noupartazer_app/Atish/components/SectionWithEditButton.dart';
import 'package:noupartazer_app/Atish/components/ContactInfo.dart';
import 'package:noupartazer_app/Devashish/components/GetImage/BannerPhoto/BannerPhotoGetImage.dart';
import 'package:noupartazer_app/Devashish/components/GetImage/ProfilePhoto/ProfilePhotoGetImage.dart';
import 'package:noupartazer_app/Atish/Pages/NGOProfile/MemberModel.dart';
import 'package:noupartazer_app/Atish/Pages/Story/NGOStory/NGOStory.dart';
import 'package:noupartazer_app/Atish/Pages/Story/NGOStory/NGOStoryList.dart';
import 'package:noupartazer_app/Atish/Pages/Story/NGOStory/NGOStoryModelProfile.dart';
import 'package:noupartazer_app/Yashna/Pages/EditInfoAndContactDialog/NGOEditName.dart';
import 'package:noupartazer_app/Yashna/Pages/EditInfoAndContactDialog/EditContact.dart';
import 'package:noupartazer_app/Yashna/Pages/EditMembersDialog/EditMembersModel.dart';
import 'package:noupartazer_app/Yashna/Pages/ConfirmationDialog/DeleteMember.dart';

class ViewOnlyNGOProfile extends StatelessWidget
{
  final List<NGOStory> ngoStory = ngoStoryList;
  
  @override
  Widget build(BuildContext context)
  {
    final screen = MediaQuery.of(context).size;
    var ngoEditNameBottomSheet = new NGOEditName().displayBottomSheet(context);
    var editContactBottomSheet = new EditContact().displayBottomSheet(context);
    var ngoEditMembersBottomSheet = new EditMembersModel().displayBottomSheet(context);
    var deleteMemberDialog = new DeleteMember().displayDialog(context);

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
                    BannerPhotoGetImage
                    (
                      screen: screen,
                      constraints: constraints,
                    ),

                    ProfilePhotoGetImage(constraints: constraints,),
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
                      color: Color.fromRGBO(0, 50, 193, 1),
                      onPress: ngoEditNameBottomSheet,
                      isModalPage: true,
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
                          color: Color.fromRGBO(51, 51, 51, 1),
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
                      onPress: editContactBottomSheet,
                      isModalPage: true,
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
                      onPress: ngoEditMembersBottomSheet,
                      isModalPage: true,
                    ),
                  ]
                ),

                MemberModel
                (
                  onPressDelete: deleteMemberDialog,
                  isPopUpPage: true,
                  onPressEdit: ngoEditMembersBottomSheet,
                ),
              ],
            ),   
          )
        );
      }
    );
  }
}
