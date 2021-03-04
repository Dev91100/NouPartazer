
import 'package:flutter/material.dart';

import 'package:NouPartazer_App/Atish/components/PageTitle.dart';
import 'package:NouPartazer_App/Atish/Pages/Story/Story.dart';
import 'package:NouPartazer_App/Atish/Pages/Story/StoryList.dart';
import 'package:NouPartazer_App/Atish/Components/IconText.dart';
import 'package:NouPartazer_App/Koomalai/src/Business%20Event%20Details/Business%20event%20details.dart';

class NGODonation extends StatelessWidget
{
  final List<Story> stories = storyList;

  @override
  Widget build(BuildContext context)
  {
    return LayoutBuilder
    (
      builder: (ctx, constraints)
      {
        return Scaffold
        (
          body: Column
          (
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children:
            [
              PageTitle
              (
                title: 'DONATIONS',
              ),

              Container
              (
                height: constraints.maxHeight * 0.06,
                width: constraints.maxWidth * 0.2,
                margin: EdgeInsets.only
                (
                  right: 20,
                  bottom: 20,
                ),
                child: RaisedButton
                (
                  color: Colors.white,
                  shape: RoundedRectangleBorder
                  (
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row
                  (
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: 
                    [
                      Expanded
                      (
                        child: Container
                        (
                          padding: EdgeInsets.all
                          (
                            0
                          ),
                          
                          child: Icon
                          (
                            Icons.visibility_outlined,
                            color: Color.fromRGBO(51, 51, 51, 1),
                            size: 26,
                          ),
                        ),
                      ),
                      Expanded
                      (
                        child: Text
                        (
                          stories.length.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle
                          (
                            color: Color.fromRGBO(51, 51, 51, 1),
                            fontSize: 18
                          )
                        ),
                      ),
                    ],
                  ),
                  onPressed: (){}
                ),
              ),

              Container
              (
                height: constraints.maxHeight * 0.8,
                child: ListView
                (
                  shrinkWrap: true,
                  padding: const EdgeInsets.only
                  (
                    top: 0
                  ),

                  children:
                  stories.map((st)
                  {
                    return Card
                    (
                      elevation: 0,
                      child: ListTile
                      (
                        leading: Container
                        (
                          margin: EdgeInsets.only
                          (
                            right: 10
                          ),
                          width: 60.0,
                          height: 60.0,
                          decoration: BoxDecoration
                          (
                            image: DecorationImage
                            (
                              image: AssetImage(st.image),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                        ),
                        title: Row
                        (
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:
                          [
                            Expanded
                            (
                              child: Container
                              (
                                child: SingleChildScrollView
                                (
                                  scrollDirection: Axis.horizontal,
                                  child: Text
                                  (
                                    st.tag,
                                    style: TextStyle
                                    (
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Row
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
                                  child: Icon
                                  (
                                    Icons.no_food,
                                    color: Color.fromRGBO(0,163,68,1),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        subtitle: Container
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
                                  text: st.date,
                                  icon: Icons.event,
                                  R: 0,
                                  G: 50,
                                  B: 193,
                                  O: 1,
                                ),
                                
                                IconText
                                (
                                  text: st.locationName,
                                  icon: Icons.location_on_outlined,
                                  R: 102,
                                  G: 102,
                                  B: 102,
                                  O: 1,
                                ),
                              ],
                            ),
                          ),
                        ),
                        onTap: ()
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
                        }
                      ),
                    );
                  }).toList(),
                ),
              )
            ],
          )
        );
      }
    );
  }
}

