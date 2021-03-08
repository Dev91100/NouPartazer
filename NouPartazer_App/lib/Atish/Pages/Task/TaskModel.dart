import 'package:flutter/material.dart';

import 'package:NouPartazer_App/Atish/Pages/Task/Task.dart';
import 'package:NouPartazer_App/Atish/Pages/Task/OngoingTaskList.dart';
import 'package:NouPartazer_App/Atish/components/IconText.dart';
import 'package:NouPartazer_App/Atish/components/SectionTitle.dart';
import 'package:NouPartazer_App/Atish/components/LongText.dart';
import 'package:NouPartazer_App/Atish/components/ContainerIconText.dart';
import 'package:NouPartazer_App/Atish/components/ContainerText.dart';
import 'package:NouPartazer_App/Atish/components/ButtonIconText.dart';
import 'package:NouPartazer_App/Koomalai/src/Business%20Event%20Ongoing/Business%20event%20ongoing.dart';

class TaskModel extends StatelessWidget
{
  final List<Task> ongoingTask = ongoingTaskList;
  final String image;
  final String description, locationName, date, time, tag, status;
  final BoxConstraints constraints;

  TaskModel
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
              child: Row
              (
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,

                children:
                [
                  Container
                  (
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration
                    (
                      image: DecorationImage
                      (
                        image: AssetImage(image),
                        fit: BoxFit.cover,
                      )
                    ),
                  ),

                  Card
                  (
                    elevation: 2,
                    child: Padding
                    (
                      padding: const EdgeInsets.all(10),
                      child: Container
                      (
                        child: Column
                        (
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:
                          [
                            Row
                            (
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
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
                                    // boxRight: 10,
                                    R: 51,
                                    G: 51,
                                    B: 51,
                                    O: 1,
                                  ),
                                ),

                                IconText
                                (
                                  text: time,
                                  icon: Icons.query_builder_outlined,
                                  fontSize: 15,
                                  R: 51,
                                  G: 51,
                                  B: 51,
                                  O: 1,
                                ),
                              ],
                            ),

                            Container
                            (
                              // width: constraints.maxWidth * 0.2,
                              padding: EdgeInsets.only
                              (
                                top: 5,
                              ),
                              child: IconText
                              (
                                text: locationName,
                                icon: Icons.location_on_outlined,
                                fontSize: 15,
                                R: 51,
                                G: 51,
                                B: 51,
                                O: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
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