import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/components/Buttons/SettingsButton.dart';
import 'package:noupartazer_app/Atish/components/SectionTitle.dart';
import 'package:noupartazer_app/Atish/components/CustomDivider.dart';
import 'package:noupartazer_app/Atish/components/LongText.dart';
import 'package:noupartazer_app/Atish/components/SectionWithEditButton.dart';
import 'package:noupartazer_app/Atish/components/ContactInfo.dart';
import 'package:noupartazer_app/Devashish/Global.dart';
import 'package:noupartazer_app/Devashish/components/GetImage/BannerPhoto/BannerPhotoGetImage.dart';
import 'package:noupartazer_app/Devashish/components/GetImage/ProfilePhoto/ProfilePhotoGetImage.dart';
import 'package:noupartazer_app/Atish/Pages/NGOProfile/MemberModel.dart';
import 'package:noupartazer_app/Atish/Pages/Story/NGOStory/NGOStoryModelProfile.dart';
import 'package:noupartazer_app/Yashna/Pages/EditInfoAndContactDialog/NGOEditName.dart';
import 'package:noupartazer_app/Yashna/Pages/EditInfoAndContactDialog/EditContact.dart';
import 'package:noupartazer_app/Yashna/Pages/EditMembersDialog/EditMembersModel.dart';
import 'package:noupartazer_app/Yashna/Pages/ConfirmationDialog/DeleteMember.dart';

class NGOProfileModel extends StatelessWidget
{ 
  final bool isEditable;

  NGOProfileModel
  (
    {
      this.isEditable = false,
    }
  );

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
                      isEditable: isEditable,
                      constraints: constraints,
                    ),

                    ProfilePhotoGetImage
                    (
                      isEditable: isEditable,
                      constraints: constraints,
                    ),

                    (isEditable) ? Container
                    (
                      alignment: Alignment.bottomRight,

                      margin: EdgeInsets.only
                      (
                        right: Global().smallSpacing,
                        top: screen.height * 0.33,
                      ),
                      child: SettingsButton(),
                    ) : Container(),
                  ],
                ),

                Container
                (
                  margin: (isEditable) ?  null : EdgeInsets.only(top: constraints.maxHeight * 0.025),
                  child: Column
                  (
                    children:
                    [
                      SectionTitle
                      (
                        text: 'MY STORIES',
                        margin: EdgeInsets.symmetric(horizontal: Global().smallPageMargin),
                      ),

                      Container
                      (
                        margin: EdgeInsets.only(top: Global().smallSpacing),
                        child: NGOStoryModelProfile()
                      ),
                    ],
                  ),
                ),
                
                CustomDivider
                (
                  indent: 20,
                  endIndent: 20,
                ),

                Container
                (
                  margin: EdgeInsets.symmetric(horizontal: Global().smallPageMargin),
                  child: Column
                  (
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                    [
                      SectionWithEditButton
                      (
                        isEditable: isEditable,
                        title: 'Manzer Partazer Test Test Test Test'.toUpperCase(),
                        color: Color.fromRGBO(0, 50, 193, 1),
                        onPress: ngoEditNameBottomSheet,
                        isModalPage: true,
                      ),
                      
                      SectionTitle
                      (
                        text: 'Food Sharing Project of Mauritius Mauritius Mauritius',
                        color: Color.fromRGBO(51, 51, 51, 1),
                      ),

                      Container
                      (
                        constraints: BoxConstraints
                        (
                          maxHeight: constraints.maxHeight * 0.25,
                        ),
                        child: LongText
                        (
                          text: "MANZER PARTAZER is the the first food sharing project of Mauritius. Our aim is to reduce the wastage of high quality ready to eat food by simply sharing it!"
                                "We ‘save’ food which would otherwise go to waste, such as buffet leftovers in hotels or restaurants, donating it to people in need through a very simple and no-cost food sharing system.or restaurants, donating it to people in need through a very simple and no-cost food sharing system.or restaurants, donating it to people in need through a very simple and no-cost food sharing system.or restaurants, donating it to people in need through a very simple and no-cost food sharing system.",
                          textAlign: TextAlign.justify,
                          fontWeight: FontWeight.w400,
                        ),
                      ),

                      CustomDivider(),

                      Container
                      (
                        margin: (isEditable) ?  null : EdgeInsets.only(bottom: constraints.maxHeight * 0.025),
                        child: SectionWithEditButton
                        (
                          isEditable: isEditable,
                          title: 'CONTACT INFO',
                          onPress: editContactBottomSheet,
                          isModalPage: true,
                        ),
                      ),

                      ContactInfo
                      (
                        website: 'www.facebook.com',
                        margin: EdgeInsets.all(0),
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
                      ),

                      CustomDivider(),

                      SectionWithEditButton
                      (
                        isEditable: isEditable,
                        title: 'MEMBERS',
                        icon: Icons.add,
                        onPress: ngoEditMembersBottomSheet,
                        isModalPage: true,
                      ),

                      MemberModel
                      (
                        isEditable: isEditable,
                        onPressDelete: deleteMemberDialog,
                        isPopUpPage: true,
                        onPressEdit: ngoEditMembersBottomSheet,
                      ),
                    ],
                  ),
                ),
              ],
            ),   
          )
        );
      }
    );
  }
}
