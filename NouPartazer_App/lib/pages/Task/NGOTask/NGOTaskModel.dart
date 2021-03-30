import 'package:flutter/material.dart';

import 'package:noupartazer_app/components/IconText.dart';
import 'package:noupartazer_app/components/SectionTitle.dart';
import 'package:noupartazer_app/components/LongText.dart';
import 'package:noupartazer_app/components/ContainerIconText.dart';
import 'package:noupartazer_app/components/ContainerText.dart';
import 'package:noupartazer_app/components/Buttons/SmallButtonIconText.dart';
import 'package:noupartazer_app/Pages/EventDetailsPage/EventDetails.dart';
import 'package:noupartazer_app/Global.dart';

class NGOTaskModel extends StatelessWidget
{
  final String image;
  final String description, locationName, date, time, tag, status;
  final BoxConstraints constraints;

  NGOTaskModel
  (
    {
      this.image,
      this.description,
      this.locationName,
      this.date,
      this.time,
      this.tag,
      this.status,
      this.constraints = const BoxConstraints(maxHeight: 500),
    }
  );

  @override
  Widget build(BuildContext context)
  {
    return Card
    (
      color: Colors.white,
      elevation: 2,
      margin: EdgeInsets.symmetric
      (
        vertical: Global().mediumSpacing, 
        horizontal: Global().smallPageMargin,
      ),
      child: Container
      (
        padding: EdgeInsets.all(Global().smallSpacing),
        child: Column
        (
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Container
            (
              constraints: BoxConstraints
              (
                minHeight: 80,
              ),
              child: Padding
              (
                padding: EdgeInsets.symmetric
                (
                  vertical: Global().smallSpacing,
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
                            Container
                            (
                              padding: EdgeInsets.only(bottom: Global().smallSpacing),
                              child: SingleChildScrollView
                              (
                                scrollDirection: Axis.horizontal,
                                child: Row
                                (
                                  children:
                                  [
                                    //Date
                                    Container
                                    (
                                      margin: EdgeInsets.only(right: Global().smallSpacing),
                                      child: IconText
                                      (
                                        text: date,
                                        icon: Icons.insert_invitation_outlined,
                                        fontSize: Global().tinyText,  // Override
                                        iconSize: Global().tinyIcon,  //Override
                                        textColor: Color.fromRGBO(0, 0, 0, 1),
                                      ),
                                    ),
                                    
                                    //Time
                                    IconText
                                    (
                                      text: time,
                                      icon: Icons.query_builder_outlined,
                                      fontSize: Global().tinyText,  // Override
                                      iconSize: Global().tinyIcon,  //Override
                                      textColor: Color.fromRGBO(0, 0, 0, 1),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Row
                            (
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:
                              [
                                Expanded
                                (
                                  //Location
                                  child: Container
                                  (
                                    padding: EdgeInsets.only(bottom: Global().tinySpacing),
                                    child: SingleChildScrollView
                                    (
                                      scrollDirection: Axis.horizontal,
                                      child: IconText
                                      (
                                        text: locationName,
                                        icon: Icons.location_on_outlined,
                                        fontSize: Global().tinyText,  // Override
                                        iconSize: Global().tinyIcon, //Override
                                        textColor: Color.fromRGBO(0, 0, 0, 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //Tag of the Event
            Container
            (
              margin: EdgeInsets.only(top: Global().smallSpacing),
              child: SectionTitle
              (
                text: tag,
              ),
            ),
            
            //Event Description
            Container
            (
              constraints: BoxConstraints
              (
                maxHeight: constraints.maxHeight * 0.2,
              ),
              child: LongText
              (
                text: description,
                fontWeight: FontWeight.w400,
              ),
            ),
            Container
            (
              margin: EdgeInsets.only(top: Global().mediumSpacing),
              child: Row
              (
                children:
                [
                  //Status Indicator
                  ContainerIconText
                  (
                    text: 'Status',
                    fontWeight: FontWeight.w500,
                    textColor: Colors.black,
                    boxColor: Color.fromRGBO(102, 102, 102, 0.2),
                    icon: Icons.online_prediction_outlined,
                    iconColor: Colors.black,
                  ),
                  ContainerText
                  (
                    text: status,
                    borderWidth: 1.5,
                    textColor: Color.fromRGBO(245, 197, 41, 1),
                    borderColor: Color.fromRGBO(245, 197, 41, 1),
                    boxColor: Color.fromRGBO(255, 248, 97, 0.2),
                    padding: EdgeInsets.symmetric
                    (
                      vertical: Global().tinySpacing,
                      horizontal: Global().largeSpacing,  
                    ),
                  ),
                ],
              ),
            ),
            Container
            (
              margin: EdgeInsets.only(top: Global().mediumSpacing),
              child: Row
              (
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children:
                [
                  SmallButtonIconText
                  (
                    text: 'Call',
                    icon: Icons.phone_forwarded,
                    iconRight: Global().tinySpacing,
                    buttonColor: Color.fromRGBO(245, 197, 1, 1),
                  ),

                  Container
                  (
                    margin: EdgeInsets.only(left: Global().normalSpacing),
                    child: SmallButtonIconText
                    (
                      text: 'View Details',
                      icon: Icons.visibility_outlined,
                      iconRight: Global().tinySpacing,
                      onPress: EventDetails(),
                      transitionType: 'rightToLeft',
                      transitionDuration: 1100,
                      isPageTransition: true,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}