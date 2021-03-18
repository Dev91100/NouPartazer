import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/components/RoundIconButton.dart';
import 'package:noupartazer_app/Atish/components/RoundPhotoButton.dart';
import 'package:noupartazer_app/Atish/components/SectionTitle.dart';
import 'package:noupartazer_app/Atish/components/CustomDivider.dart';
import 'package:noupartazer_app/Atish/components/LongText.dart';
import 'package:noupartazer_app/Atish/components/SectionWithEditButton.dart';
import 'package:noupartazer_app/Atish/components/ContactInfo.dart';
import 'package:noupartazer_app/Koomalai/components/bottomSheetWidget.dart';
import 'package:noupartazer_app/Atish/Pages/Story/NGOStory/NGOStory.dart';
import 'package:noupartazer_app/Atish/Pages/Story/NGOStory/NGOStoryList.dart';
import 'package:noupartazer_app/Atish/Pages/Story/BusinessStory/BusinessStoryModelProfile.dart';
import 'package:noupartazer_app/Koomalai/Pages/SettingsPage/NGOAndBusinessSettings.dart';
import 'package:noupartazer_app/Yashna/Pages/EditInfoAndContact/EditContactModel.dart';
import 'package:noupartazer_app/Yashna/Pages/EditInfoAndContact/BusinessEditName.dart';

class BusinessProfile extends StatelessWidget
{
  final List<NGOStory> ngoStory = ngoStoryList;

  @override
  Widget build(BuildContext context)
  {
    final screen = MediaQuery.of(context).size;
    var businessEditNameBottomSheet = new BusinessEditName().displayBottomSheet(context);
    var editContactBottomSheet = new EditContactModel().displayBottomSheet(context);

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
                          image: AssetImage('assets/JPEG/Winners.jpg'),
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
                            isModalPage: true,
                            onPress: BottomSheetWidget(),
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
                            image: AssetImage('assets/JPEG/Jumbo.png'),
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
                            isModalPage: true,
                            onPress: BottomSheetWidget()
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
                        onPress: NGOAndBusinessSettings(),
                        isPage: true,
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
                      title: 'Manzer Partazer Test Test Test Test',
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

                Container
                (
                  margin: EdgeInsets.only(bottom: 30),
                  child: Column
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