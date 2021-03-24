import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/components/Buttons/SettingsButton.dart';
import 'package:noupartazer_app/Atish/components/SectionTitle.dart';
import 'package:noupartazer_app/Atish/components/CustomDivider.dart';
import 'package:noupartazer_app/Atish/components/LongText.dart';
import 'package:noupartazer_app/Atish/components/SectionWithEditButton.dart';
import 'package:noupartazer_app/Atish/components/ContactInfo.dart';
import 'package:noupartazer_app/Devashish/components/GetImage/BannerPhoto/BannerPhotoGetImage.dart';
import 'package:noupartazer_app/Devashish/components/GetImage/ProfilePhoto/ProfilePhotoGetImage.dart';
import 'package:noupartazer_app/Atish/Pages/Story/BusinessStory/BusinessStoryModelProfile.dart';
import 'package:noupartazer_app/Yashna/Pages/EditInfoAndContactDialog/EditContact.dart';
import 'package:noupartazer_app/Yashna/Pages/EditInfoAndContactDialog/BusinessEditName.dart';

class BusinessProfileModel extends StatelessWidget
{
  final bool isEditable;

  BusinessProfileModel
  (
    {
      this.isEditable = false,
    }
  );

  @override
  Widget build(BuildContext context)
  {
    final screen = MediaQuery.of(context).size;
    var businessEditNameBottomSheet = new BusinessEditName().displayBottomSheet(context);
    var editContactBottomSheet = new EditContact().displayBottomSheet(context);

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
                        right: 20,
                        top: screen.height * 0.33,
                      ),
                      child: SettingsButton(),
                    ) : Container(),
                  ],
                ),

                Column
                (
                  children:
                  [
                    Container
                    (
                      child: SectionTitle
                      (
                        title: 'MY STORIES',
                      ),
                    ),

                    BusinessStoryModelProfile(),
                  ],
                ),
                
                CustomDivider(),

                Column
                (
                  children:
                  [
                    SectionWithEditButton
                    (
                      isEditable: isEditable,
                      title: 'Jumbo Supermarket',
                      fontSize: 22,
                      color: Color.fromRGBO(0, 50, 193, 1),
                      onPress: businessEditNameBottomSheet,
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
                          title: 'Best supermarket chain',
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
                        title: "Jumbo is the supermarket chain that has democratized mass distribution, becoming the preferred supermarket for Mauritian households. A subsidiary of the IBL group, Jumbo supermarkets have been present on the island since 1994, and are the first to have opened a supermarket in a rural area.",
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        top: screen.height * 0.015,
                      ),
                    ),
                  ],
                ),

                CustomDivider(),

                Container
                (
                  margin: EdgeInsets.only(bottom: 30),
                  child: Column
                  (
                    children:
                    [
                      Container
                      (
                        child: Container
                        (
                          margin: (isEditable) ?  null : EdgeInsets.only(bottom: constraints.maxHeight *0.025),
                          child: SectionWithEditButton
                          (
                            isEditable: isEditable,
                            title: 'CONTACT INFO',
                            onPress: editContactBottomSheet,
                            isModalPage: true,
                          ),
                        ),
                      ),

                      ContactInfo
                      (
                        website: 'www.manzerpartazer.org',
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
                ),
              ],
            ),   
          )
        );
      }
    );
  }
}