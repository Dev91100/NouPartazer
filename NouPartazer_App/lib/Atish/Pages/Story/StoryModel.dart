import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

import './Story.dart';
import './InfoTab.dart';
import './TagsTab.dart';
import './StoryList.dart';
import '../../components/PageTitle.dart';

class StoryModel extends StatelessWidget 
{
  final List<Story> stories = storyList;

  @override
  Widget build(BuildContext context)
  {
    return LayoutBuilder
    (
      builder: (ctx, constraints)
      {
        return Stack
        (
          children:
          [

            Container
            (
              color: Color.fromRGBO(242, 242, 242, 1),
            ),
            
            ListView
            (
              // Prevents vertical scrolling
              physics: NeverScrollableScrollPhysics(),
              
              children:
              [
                // STORIES TITLE ON TOP
                PageTitle
                (
                  title: 'STORIES',
                  R: 0, G: 0, B: 0, O: 1,
                ),

                // STORIES SLIDER
                CarouselSlider
                (
                  options: CarouselOptions
                  (
                    height: constraints.maxHeight,
                    initialPage: 0,
                    viewportFraction: 0.92,
                    enableInfiniteScroll: false,
                    enlargeCenterPage: false,
                  ),

                  items: stories.map((st)
                  {
                    return Card
                    (
                      elevation: 2,
                      color: Colors.transparent,
                      shape: RoundedRectangleBorder
                      (
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      margin: EdgeInsets.only
                      (
                        left: constraints.maxHeight * 0.01,
                        right: constraints.maxHeight * 0.01,
                        bottom: constraints.maxHeight * 0.12
                      ),
                      // STORY BACKGROUND
                      child: Container
                      (
                        decoration: BoxDecoration
                        (
                          image: DecorationImage
                          (
                            image: AssetImage(st.image),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        // Black gradient behind text at the bottom of the story
                        child: Container
                        (
                          decoration: BoxDecoration
                          (
                            gradient: LinearGradient
                            (
                              colors: 
                              [
                                new Color.fromRGBO(0, 0, 0, 1), // Black
                                new Color.fromRGBO(0, 0, 0, 0), // Transparent
                              ],
                              begin: FractionalOffset(1.0, 1.1),
                              end: FractionalOffset(1.0, 0.0),
                              stops: [0.0,0.5],
                              tileMode: TileMode.clamp,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          // Location Name
                          child: Padding
                          (
                            padding: const EdgeInsets.fromLTRB(15,0,15,15),
                            child: Column
                            (
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: 
                              [
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: FittedBox
                                  (
                                    fit: BoxFit.contain,
                                    child: Text
                                    ( 
                                      st.locationName,
                                      style: TextStyle
                                      (
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30,
                                        color: new Color.fromRGBO(245, 197, 41, 1),
                                      ),
                                    ),
                                  ),
                                ),
                                
                                // Separation Between Text
                                SizedBox
                                (
                                  height: 10,
                                ),

                                // Location Address
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: FittedBox
                                    (
                                    fit: BoxFit.contain,
                                    child: Text
                                    (
                                      st.locationAddress,
                                      style: TextStyle
                                        (
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.white,
                                        ),
                                    ),
                                  ),
                                ),
                                
                                // Separation Between Text
                                SizedBox
                                (
                                  height: 10,
                                ),

                                // Date & Time
                                FittedBox
                                (
                                  fit: BoxFit.contain,
                                  child: Row
                                  (
                                    children: 
                                    [
                                      InfoTab
                                      (
                                        icon: Icons.calendar_today_outlined, 
                                        date: st.date
                                      ),
                                      
                                      InfoTab
                                      (
                                        icon: Icons.query_builder_outlined, 
                                        date: st.time
                                      ),
                                    ],
                                  ),
                                ),

                                // Tags
                                SingleChildScrollView
                                (
                                  scrollDirection: Axis.horizontal,
                                  child: Container
                                  (
                                    child: Row
                                    (
                                      children: 
                                      [
                                        TagsTab(data: st.tag),
                                        TagsTab(data: st.foodType),
                                        TagsTab(data: st.foodType),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ),
                    );
                  }).toList(),
                )
              ],
            ),
          ],
        );
      }
    );
  }
}