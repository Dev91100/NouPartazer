import 'package:flutter/material.dart';

import 'package:noupartazer_app/Global.dart';
import 'package:noupartazer_app/components/Buttons/SettingsButton.dart';
import 'package:noupartazer_app/components/SectionTitle.dart';
import 'package:noupartazer_app/components/CustomDivider.dart';
import 'package:noupartazer_app/components/LongText.dart';
import 'package:noupartazer_app/components/SectionWithEditButton.dart';
import 'package:noupartazer_app/components/ContactInfo.dart';
import 'package:noupartazer_app/components/GetImage/BannerPhoto/BannerPhotoGetImage.dart';
import 'package:noupartazer_app/components/GetImage/ProfilePhoto/ProfilePhotoGetImage.dart';
import 'package:noupartazer_app/Pages/ProfilePage/NGO/NGOMembers/MemberModel.dart';
import 'package:noupartazer_app/Pages/Story/NGOStory/NGOStoryModelProfile.dart';
import 'package:noupartazer_app/Pages/Dialogs/EditInfoAndContactDialog/NGOEditName.dart';
import 'package:noupartazer_app/Pages/Dialogs/EditInfoAndContactDialog/EditContact.dart';
import 'package:noupartazer_app/Pages/Dialogs/EditMembersDialog/EditMembersModel.dart';
import 'package:noupartazer_app/Pages/Dialogs/ConfirmationDialog/DeleteMember.dart';

class NGOProfileModel extends StatefulWidget
{ 
  final bool isEditable;

  NGOProfileModel
  (
    {
      this.isEditable = false,
    }
  );

  @override
  _NGOProfileModelState createState() => _NGOProfileModelState();
}

class _NGOProfileModelState extends State<NGOProfileModel>
{
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
                      isEditable: widget.isEditable,
                      constraints: constraints,
                    ),

                    ProfilePhotoGetImage
                    (
                      isEditable: widget.isEditable,
                      constraints: constraints,
                    ),

                    (widget.isEditable) ? Container
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
                  margin: (widget.isEditable) ?  null : EdgeInsets.only(top: constraints.maxHeight * 0.025),
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
                        isEditable: widget.isEditable,
                        title: 'Manzer Partazer'.toUpperCase(),
                        color: Color.fromRGBO(0, 50, 193, 1),
                        onPress: ngoEditNameBottomSheet,
                        isModalPage: true,
                      ),
                      
                      SectionTitle
                      (
                        text: 'Food Sharing Project of Mauritius',
                        textColor: Color.fromRGBO(51, 51, 51, 1),
                      ),

                      Container
                      (
                        constraints: BoxConstraints
                        (
                          maxHeight: constraints.maxHeight * 0.25,
                        ),
                        child: LongText
                        (
                          text: "MANZER PARTAZER is the the first food sharing project of Mauritius. Our aim is to reduce the wastage of high quality ready to eat food by simply sharing it! We ‘save’ food which would otherwise go to waste, such as buffet leftovers in hotels or restaurants, donating it to people in need through a very simple and no-cost food sharing system.or restaurants, donating it to people in need through a very simple and no-cost food sharing system.or restaurants, donating it to people in need through a very simple and no-cost food sharing system.or restaurants, donating it to people in need through a very simple and no-cost food sharing system.",
                          textAlign: TextAlign.justify,
                        ),
                      ),

                      CustomDivider(),

                      Container
                      (
                        margin: (widget.isEditable) ?  null : EdgeInsets.only(bottom: constraints.maxHeight * 0.025),
                        child: SectionWithEditButton
                        (
                          isEditable: widget.isEditable,
                          title: 'CONTACT INFO',
                          onPress: editContactBottomSheet,
                          isModalPage: true,
                        ),
                      ),

                      ContactInfo
                      (
                        margin: EdgeInsets.all(0),
                        website: 'www.facebook.com',
                        icon: Icons.language_outlined,
                      ),
                      
                      ContactInfo
                      (
                        email: 'info@manzerpartazer.org',
                        icon: Icons.email_outlined,
                      ),

                      ContactInfo
                      (
                        phoneNumber: '+230 5575 2567',
                        icon: Icons.call_outlined,
                      ),

                      CustomDivider(),

                      SectionWithEditButton
                      (
                        isEditable: widget.isEditable,
                        title: 'MEMBERS',
                        icon: Icons.add,
                        onPress: ngoEditMembersBottomSheet,
                        isModalPage: true,
                      ),

                      MemberModel
                      (
                        isEditable: widget.isEditable,
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
