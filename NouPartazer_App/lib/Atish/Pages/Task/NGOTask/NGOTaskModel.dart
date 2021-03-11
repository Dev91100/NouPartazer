import 'package:flutter/material.dart';

import 'package:NouPartazer_App/Atish/components/IconText.dart';
import 'package:NouPartazer_App/Atish/components/SectionTitle.dart';
import 'package:NouPartazer_App/Atish/components/LongText.dart';
import 'package:NouPartazer_App/Atish/components/ContainerIconText.dart';
import 'package:NouPartazer_App/Atish/components/ContainerText.dart';
import 'package:NouPartazer_App/Atish/components/ButtonIconText.dart';
import 'package:NouPartazer_App/Koomalai/src/Business%20Event%20Ongoing/Business%20event%20ongoing.dart';

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
                                    Container
                                    (
                                      margin: EdgeInsets.only(right: 10),
                                      child: IconText
                                      (
                                        text: date,
                                        icon: Icons.insert_invitation_outlined,
                                        fontSize: 15,
                                        R: 0,
                                        G: 0,
                                        B: 0,
                                        O: 1,
                                      ),
                                    ),
                                    
                                    IconText
                                    (
                                      text: time,
                                      icon: Icons.query_builder_outlined,
                                      fontSize: 15,
                                      R: 0,
                                      G: 0,
                                      B: 0,
                                      O: 1,
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
                                        R: 0,
                                        G: 0,
                                        B: 0,
                                        O: 1,
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
              child: LongText
              (
                title: description,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                left: 0,
                right: 0
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
                    IconR: 255,
                    IconG: 255,
                    IconB: 255,
                    IconO: 1,
                  ),
                  ContainerText
                  (
                    text: status,
                    borderWidth: 1.5,
                    TextR: 245,
                    TextG: 197,
                    TextB: 41,
                    BorderR: 245,
                    BorderG: 197,
                    BorderB: 41,
                    BorderO: 1,
                    BoxR: 255,
                    BoxG: 248,
                    BoxB: 97,
                    BoxO: 0.2,
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
                  ButtonIconText
                  (
                    text: 'View Details',
                    icon: Icons.visibility_outlined,
                    iconRight: 5,
                    openPage: BusinessEventOngoing(),
                  ),

                  Container
                  (
                    margin: EdgeInsets.only(left: 15),
                    child: ButtonIconText
                    (
                      text: 'Call',
                      icon: Icons.phone_forwarded,
                      iconRight: 5,
                      ButtonR: 245,
                      ButtonG: 197,
                      ButtonB: 1,
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