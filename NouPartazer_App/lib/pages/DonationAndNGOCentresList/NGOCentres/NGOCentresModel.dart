import 'package:flutter/material.dart';

import 'package:noupartazer_app/components/Text/NormalText.dart';
import 'package:noupartazer_app/components/Text/TinyText.dart';
import 'package:noupartazer_app/Global.dart';
import 'package:noupartazer_app/components/Transitions/AllTransitions.dart';
import 'package:noupartazer_app/pages/ProfilePage/NGO/ViewOnlyNGOProfile.dart';


class NGOCentresModel extends StatelessWidget
{
  final String profilePhoto;
  final String bannerPhoto;
  final String name;
  final String expertise;
  final int size;
  final String address;
  final String phone;
  final String website;
  final String description;

  NGOCentresModel
  (
    {
      this.profilePhoto,
      this.bannerPhoto,
      this.name,
      this.expertise,
      this.size,
      this.address,
      this.phone,
      this.website,
      this.description,
    }
  );

  @override
  Widget build(BuildContext context)
  {
    return Container
    (
      margin: EdgeInsets.symmetric
      (
        horizontal: Global().smallPageMargin,
      ),
      child: Container
      (
        margin: EdgeInsets.only
        (
          bottom: Global().tinySpacing,
        ),
        child: ElevatedButton
        (
          style: ElevatedButton.styleFrom
          (
            elevation: 0,
            primary: Colors.white,
            onPrimary: Colors.black,
            shape: RoundedRectangleBorder
            (
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
          ),

          child: Padding
          (
            padding: EdgeInsets.symmetric
            (
              vertical: Global().ngoCentresListSpacing,
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
                    right: Global().smallSpacing,
                  ),
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration
                  (
                    image: DecorationImage
                    (
                      image: AssetImage(profilePhoto),
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
                        Row
                        (
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:
                          [
                            Expanded
                            (
                              child: Container
                              (
                                padding: EdgeInsets.only(bottom: Global().tinySpacing),
                                child: SingleChildScrollView
                                (
                                  scrollDirection: Axis.horizontal,
                                  child: NormalText
                                  (
                                    text: name,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        Container
                        (
                          width: double.infinity,
                          decoration: BoxDecoration
                          (
                            border: Border
                            (
                              bottom: BorderSide
                              (
                                color: Color.fromRGBO(102, 102, 102, 0.3),
                                width: 1,
                              ),
                            ),
                          ),
                          padding: EdgeInsets.only(bottom: Global().smallSpacing),
                          child: SingleChildScrollView
                          (
                            scrollDirection: Axis.horizontal,
                            child: TinyText(text: description),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          onPressed: () 
          {
            AllTransitions().getTransition
            (
              context: context,
              transitionType: 'rightToLeft',
              onPress: ViewOnlyNGOProfile(),
            );
          },
        ),
      ),
    );
  }
}
