import 'package:flutter/material.dart';

import 'package:noupartazer_app/Global.dart';
import 'package:noupartazer_app/components/IconText.dart';
import 'package:noupartazer_app/components/Text/NormalText.dart';
import 'package:noupartazer_app/components/Transitions/AllTransitions.dart';
import 'package:noupartazer_app/Pages/EventDetailsPage/EventDetails.dart';

class DonationModel extends StatelessWidget
{
  final String image, tag, date, locationName;
  final String transitionType;
  final int transitionDuration;
  final onPress;

  DonationModel
  (
    {
      this.onPress,
      this.image,
      this.tag,
      this.date,
      this.locationName,
      this.transitionType = 'rightToLeft',
      this.transitionDuration = 1100,
    }
  );

  @override
  Widget build(BuildContext context)
  {
    return Container
    (
      margin: EdgeInsets.symmetric(horizontal: Global().tinyPageMargin),
      child: Container
      (
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
            padding: EdgeInsets.symmetric(vertical: Global().smallSpacing),
            
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
                      image: AssetImage(image),
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
                                    text: tag,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),

                            Container
                            (
                              padding: EdgeInsets.only(bottom: Global().smallSpacing),
                              child: Row
                              (
                                children:
                                [
                                  Container
                                  (
                                    margin: EdgeInsets.only
                                    (
                                      right: Global().smallSpacing,
                                    ),
                                    child: Icon
                                    (
                                      Icons.fastfood,
                                      color: Color.fromRGBO(255, 84, 62, 1),
                                      size: Global().foodTypeIcon,  //Override
                                    ),
                                  ),
                                  Container
                                  (  
                                    child: Icon
                                    (
                                      Icons.no_food,
                                      color: Color.fromRGBO(0, 163, 68, 1),
                                      size: Global().foodTypeIcon,  //Override
                                    ),
                                  ),
                                ],
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
                            child: Row
                            (
                              children:
                              [
                                IconText
                                (
                                  text: date,
                                  fontSize: Global().tinyText,  // Override
                                  iconSize: Global().tinyIcon,  //Override
                                  icon: Icons.event_outlined,
                                  textColor: Color.fromRGBO(0, 50, 193, 1),
                                  iconColor: Color.fromRGBO(0, 50, 193, 1),
                                ),
                                
                                IconText
                                (
                                  text: locationName,
                                  fontSize: Global().tinyText,  // Override
                                  iconSize: Global().tinyIcon,  //Override
                                  icon: Icons.location_on_outlined,
                                  textColor: Color.fromRGBO(0, 0, 0, 1),
                                ),
                              ],
                            ),
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
              transitionType: transitionType,
              transitionDuration: transitionDuration,
              onPress: EventDetails(), 
            );
          },
        ),
      ),
    );
  }
}
