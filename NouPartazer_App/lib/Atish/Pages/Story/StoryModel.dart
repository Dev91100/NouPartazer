import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

import './Story.dart';
import './InfoTab.dart';
import './TagsTab.dart';


class StoryModel extends StatelessWidget {
  final List<Story> stories =
  [
    Story
    (
      image: './assets/JPEG/batelage.jpeg',
      locationName: 'Four Seasons ResortFour Seasons Resort',
      locationAddress: 'La Place BelgathLa Place BelgathLa Place Belgath',
      date: '19/03/21',
      time: '19:00-00:30',
      tag: 'PARTY',
      foodType: 'PERISHABLE FOOD'
    ),
    Story
    (
      image: './assets/JPEG/cofee.jpeg',
      locationName: 'Winners Supermarket',
      locationAddress: 'La Place BelgathLa Place Belgath',
      date: '19/03/21',
      time: '19:00-00:30',
      tag: 'PARTY',
      foodType: 'PERISHABLE FOOD'
    ),
    
    Story
    (
      image: './assets/JPEG/burger.jpeg',
      locationName: 'Winners Supermarket',
      locationAddress: 'La Place Belgath',
      date: '19/03/21',
      time: '19:00-00:30',
      tag: 'PARTY',
      foodType: 'NON-PERISHABLE FOOD'
    ),
  ];

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
            // Background Image
            Container
            (
              height: constraints.maxHeight,
              decoration: BoxDecoration
              (
                image: DecorationImage
                (
                  image: AssetImage('assets/JPEG/Blur.jpg'),
                  fit: BoxFit.fill,
                )
              )
            ),
            
            ListView
            (
              // Prevents vertical scrolling
              physics: NeverScrollableScrollPhysics(),
              
              children:
              [
                // STORIES TITLE ON TOP
                Container(
                  margin: EdgeInsets.only
                  (
                    top: constraints.maxHeight * 0.02,
                    bottom: constraints.maxHeight * 0.01
                  ),
                  child: Text
                  (
                    'STORIES',
                    style: GoogleFonts.comfortaa
                    (
                      textStyle: TextStyle
                      (
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                        color: new Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
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
                  ),

                  items: stories.map((st)
                  {
                    return Card
                    (
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
                        // height: 700,
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
                              begin: FractionalOffset(0.0, 1.0),
                              end: FractionalOffset(1.0, 0.0),
                              stops: [0.0,0.5],
                              tileMode: TileMode.clamp,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          // Location Name
                          child: Padding(
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
                                  height: constraints.maxHeight * 0.005,
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
                                          fontSize: 25,
                                          color: Colors.white,
                                        ),
                                    ),
                                  ),
                                ),
                                
                                // Separation Between Text
                                SizedBox
                                (
                                  height: constraints.maxHeight * 0.01,
                                ),

                                // Date & Time
                                FittedBox(
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
                                  child: Container(
                                    width: constraints.maxHeight * 0.7,
                                    child: FittedBox
                                    (
                                      fit: BoxFit.contain,
                                      child: Row(
                                          children: [
                                          TagsTab(data: st.tag),
                                          TagsTab(data: st.foodType),
                                          TagsTab(data: st.foodType),
                                        ],
                                      ),
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