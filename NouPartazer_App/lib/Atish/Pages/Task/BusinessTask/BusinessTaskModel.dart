import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/components/IconText.dart';
import 'package:noupartazer_app/Atish/components/SectionTitle.dart';
import 'package:noupartazer_app/Atish/components/ContainerIconText.dart';
import 'package:noupartazer_app/Atish/components/ContainerText.dart';
import 'package:noupartazer_app/Atish/components/Buttons/SmallButtonIconText.dart';
import 'package:noupartazer_app/Koomalai/Pages/EventDetailsPage/EventDetails.dart';

class BusinessTaskModel extends StatelessWidget
{
  final String image;
  final String ngoName, description, locationName, date, time, tag, status;
  final bool canCall;
  final BoxConstraints constraints;

  BusinessTaskModel
  (
    {
      this.image,
      this.ngoName,
      this.description,
      this.locationName,
      this.date,
      this.time,
      this.tag,
      this.status,
      this.canCall = true,
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
                                    Container
                                    (
                                      margin: EdgeInsets.only(right: 10),
                                      child: IconText
                                      (
                                        text: date,
                                        icon: Icons.insert_invitation_outlined,
                                        fontSize: 15,
                                        textColor: Color.fromRGBO(0, 0, 0, 1),
                                      ),
                                    ),
                                    
                                    IconText
                                    (
                                      text: time,
                                      icon: Icons.query_builder_outlined,
                                      fontSize: 15,
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
                                        fontSize: 15,
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
            Container
            (
              margin: EdgeInsets.only(top: 10),
              child: SectionTitle
              (
                title: tag,
                left: 0,
                right: 0,
              ),
            ),
            
            Container
            (
              margin: EdgeInsets.only(top: 10),
              constraints: BoxConstraints
              (
                maxHeight: constraints.maxHeight * 0.2,
              ),
              child: Row
              (
                children:
                [
                  Text
                  (
                    'Accepted By: ',
                    style: TextStyle
                    (
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text
                  (
                    ngoName,
                    style: TextStyle
                    (
                      color: Color.fromRGBO(0, 50, 193, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            Container
            (
              margin: EdgeInsets.only(top: 20),
              child: Row
              (
                children:
                [
                  ContainerIconText
                  (
                    text: 'Status',
                    icon: Icons.online_prediction_outlined,
                    fontSize: 18,
                    mRight: 15,
                    iconColor: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  ContainerText
                  (
                    text: status,
                    borderWidth: 1.5,
                    textColor: Color.fromRGBO(245, 197, 41, 1),
                    borderColor: Color.fromRGBO(245, 197, 41, 1),
                    boxColor: Color.fromRGBO(255, 248, 97, 0.2),
                    pLeft: 40,
                    pRight: 40,
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
                  ),

                  (canCall) ?
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
                  ): Container(),      
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}