import 'package:flutter/material.dart';

import 'package:noupartazer_app/components/Buttons/SettingsButton.dart';
import 'package:noupartazer_app/components/SectionTitle.dart';
import 'package:noupartazer_app/components/CustomDivider.dart';
import 'package:noupartazer_app/components/LongText.dart';
import 'package:noupartazer_app/components/SectionWithEditButton.dart';
import 'package:noupartazer_app/components/ContactInfo.dart';
import 'package:noupartazer_app/Global.dart';
import 'package:noupartazer_app/components/GetImage/BannerPhoto/BannerPhotoGetImage.dart';
import 'package:noupartazer_app/components/GetImage/ProfilePhoto/ProfilePhotoGetImage.dart';
import 'package:noupartazer_app/Pages/Story/BusinessStory/BusinessStoryModelProfile.dart';
import 'package:noupartazer_app/Pages/Dialogs/EditInfoAndContactDialog/EditContact.dart';
import 'package:noupartazer_app/Pages/Dialogs/EditInfoAndContactDialog/BusinessEditName.dart';

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
                        child: BusinessStoryModelProfile()
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
                        title: 'Jumbo Supermarket',
                        color: Color.fromRGBO(0, 50, 193, 1),
                        onPress: businessEditNameBottomSheet,
                        isModalPage: true,
                      ),
                      
                      SectionTitle
                      (
                        text: 'Best supermarket chain',
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
                          text: "Jumbo is the supermarket chain that has democratized mass distribution, becoming the preferred supermarket for Mauritian households. A subsidiary of the IBL group, Jumbo supermarkets have been present on the island since 1994, and are the first to have opened a supermarket in a rural area.",
                          textAlign: TextAlign.justify,
                        ),
                      ),

                      CustomDivider(),

                      Container
                      (
                        child: Container
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
                      ),

                      ContactInfo
                      (
                        margin: EdgeInsets.all(0),
                        website: 'www.jumbosupermarket.org',
                        icon: Icons.language_outlined,
                      ),
                      
                      ContactInfo
                      (
                        email: 'jumbo@email.com',
                        icon: Icons.email_outlined,
                      ),

                      ContactInfo
                      (
                        phoneNumber: '+230 5575 2567',
                        icon: Icons.call_outlined,
                      ),

                      SizedBox(height: Global().largeSpacing),
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