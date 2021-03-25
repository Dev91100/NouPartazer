import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/components/IconText.dart';
import 'package:noupartazer_app/Atish/components/SectionTitle.dart';
import 'package:noupartazer_app/Atish/components/LongText.dart';
import 'package:noupartazer_app/Atish/components/ContainerIconText.dart';
import 'package:noupartazer_app/Atish/components/ContainerText.dart';
import 'package:noupartazer_app/Atish/components/Buttons/SmallButtonIconText.dart';
import 'package:noupartazer_app/Koomalai/Pages/EventDetailsPage/EventDetails.dart';
import 'package:noupartazer_app/Devashish/Global.dart';

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
      elevation: 2,
      margin: EdgeInsets.all(20),
      child: Container
      (
        padding: EdgeInsets.all(10),
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
                padding: const EdgeInsets.only
                (
                  left: 0,
                  right: 0,
                  top: 10,
                  bottom: 10,
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
                        right: 10
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
                              padding: EdgeInsets.only(bottom: 10),
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
                                      margin: EdgeInsets.only(right: 10),
                                      child: IconText
                                      (
                                        text: date,
                                        icon: Icons.insert_invitation_outlined,
                                        iconSize: Global().tinyIcon,
                                        fontSize: Global().tinyText,
                                        textColor: Color.fromRGBO(0, 0, 0, 1),
                                      ),
                                    ),
                                    
                                    //Time
                                    IconText
                                    (
                                      text: time,
                                      icon: Icons.query_builder_outlined,
                                      fontSize: Global().tinyText,
                                      iconSize: Global().tinyIcon,
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
                                    padding: EdgeInsets.only(bottom: 5),
                                    child: SingleChildScrollView
                                    (
                                      scrollDirection: Axis.horizontal,
                                      child: IconText
                                      (
                                        text: locationName,
                                        icon: Icons.location_on_outlined,
                                        fontSize: Global().tinyText,
                                        iconSize: Global().tinyIcon,
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
              margin: EdgeInsets.only(top: 10),
              child: SectionTitle
              (
                text: tag,
              ),
            ),
            
            //Event Description
            Container
            (
              margin: EdgeInsets.only(top: 10),
              constraints: BoxConstraints
              (
                maxHeight: constraints.maxHeight * 0.2,
              ),
              child: LongText
              (
                text: description,
              ),
            ),
            Container
            (
              margin: EdgeInsets.only(top: 20),
              child: Row
              (
                children:
                [
                  //Status Indicator
                  ContainerIconText
                  (
                    text: 'Status',
                    icon: Icons.online_prediction_outlined,
                    iconColor: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  ContainerText
                  (
                    text: status,
                    borderWidth: 1.5,
                    textColor: Color.fromRGBO(245, 197, 41, 1),
                    borderColor: Color.fromRGBO(245, 197, 41, 1),
                    boxColor: Color.fromRGBO(255, 248, 97, 0.2),
                    padding: EdgeInsets.only(left: 40, right: 40),
                  ),
                ],
              ),
            ),
            Container
            (
              margin: EdgeInsets.only(top: 20),
              child: Row
              (
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children:
                [
                  SmallButtonIconText
                  (
                    text: 'View Details',
                    icon: Icons.visibility_outlined,
                    iconRight: 5,
                    onPress: EventDetails(),
                    transitionType: 'rightToLeft',
                    transitionDuration: 1100,
                    isPageTransition: true,
                  ),

                  Container
                  (
                    margin: EdgeInsets.only(left: 15),
                    child: SmallButtonIconText
                    (
                      text: 'Call',
                      icon: Icons.phone_forwarded,
                      iconRight: 5,
                      buttonColor: Color.fromRGBO(245, 197, 1, 1),
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