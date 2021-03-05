import 'package:flutter/material.dart';

import 'package:NouPartazer_App/Atish/Pages/Story/Story.dart';
import 'package:NouPartazer_App/Atish/Pages/Story/StoryList.dart';
import 'package:NouPartazer_App/Atish/components/IconText.dart';
import 'package:NouPartazer_App/Koomalai/src/Business%20Event%20Details/Business%20event%20details.dart';


class DonationModel extends StatelessWidget
{
  final List<Story> stories = storyList;
  final String image, tag, date, locationName;

  DonationModel
  (
    {
      this.image,
      this.tag,
      this.date,
      this.locationName
    }
  );

  @override
  Widget build(BuildContext context)
  {
    return Container
    (
      margin: EdgeInsets.only
      (
        // top: top,
        left: 10,
        right: 10,
      ),
      child: Container
      (
        margin: EdgeInsets.only
        (
          // top: 10,
          bottom: 5
        ),
        child: RaisedButton
        (
          elevation: 0,
          color: Colors.white,
          shape: RoundedRectangleBorder
          (
            borderRadius: BorderRadius.all(Radius.circular(10))
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
                  width: 70.0,
                  height: 70.0,
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
                                padding: EdgeInsets.only(bottom: 5),
                                child: SingleChildScrollView
                                (
                                  scrollDirection: Axis.horizontal,
                                  child: Text
                                  (
                                    tag,
                                    style: TextStyle
                                    (
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Container
                            (
                              padding: EdgeInsets.only(bottom: 10),
                              child: Row
                              (
                                children:
                                [
                                  Container
                                  (
                                    margin: EdgeInsets.only
                                    (
                                      left: 20,
                                      right: 10
                                    ),
                                    child: Icon
                                    (
                                      Icons.fastfood,
                                      color: Color.fromRGBO(255,84,62,1),
                                    ),
                                  ),
                                  Container
                                  (
                                    // margin: EdgeInsets.only
                                    // (
                                    //   left: 5,
                                    //   right: 10
                                    // ),
                                    child: Icon
                                    (
                                      Icons.no_food,
                                      color: Color.fromRGBO(0,163,68,1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container
                        (
                          margin: EdgeInsets.only(),
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
                                  icon: Icons.event,
                                  R: 0,
                                  G: 50,
                                  B: 193,
                                  O: 1,
                                ),
                                
                                IconText
                                (
                                  text: locationName,
                                  icon: Icons.location_on_outlined,
                                  R: 0,
                                  G: 0,
                                  B: 0,
                                  O: 1,
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
            Navigator.push
            (
              context,
              MaterialPageRoute
              (
                builder: (context)
                {
                  return BusinessEvent();
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
