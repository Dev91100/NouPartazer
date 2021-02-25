import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import './Story.dart';
import './InfoTab.dart';
import './TagsTab.dart';


class StoryModel extends StatelessWidget {
  final List<Story> stories =
  [
    Story
    (
      image: './assets/JPEG/batelage.jpeg',
      locationName: 'Four Seasons Resort',
      locationAddress: 'La Place Belgath',
      date: '19/03/21',
      time: '19:00-00:30',
      tag: 'PARTY',
      foodType: 'PERISHABLE FOOD'
    ),
    Story
    (
      image: './assets/JPEG/cofee.jpeg',
      locationName: 'Winners Supermarket',
      locationAddress: 'La Place Belgath',
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
    return Scaffold(
      body: Container(
      child: ListView
        (
          children: <Widget>
          [
            Container(
              margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
              child: Text
              (
                'STORIES',
                style: TextStyle
                (
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                  color: new Color.fromRGBO(0, 0, 0, 1),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            CarouselSlider
            (
              options: CarouselOptions
              (
                height: 800,
                initialPage: 0,
                viewportFraction: 0.9,
                enableInfiniteScroll: false,
              ),
              items: 
                stories.map((st)
                {
                  return Card
                  (
                    margin: EdgeInsets.fromLTRB(5, 0, 5, 80),
                    child: Container
                    (
                      height: 700,
                      decoration: BoxDecoration
                      (
                        image: DecorationImage
                        (
                          image: AssetImage(st.image),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration
                        (
                          gradient: LinearGradient
                          (
                            colors: 
                            [
                              new Color.fromRGBO(0, 0, 0, 1),
                              new Color.fromRGBO(0, 0, 0, 0),
                            ],
                            begin: FractionalOffset(0.0, 1.0),
                            end: FractionalOffset(1.0, 0.0),
                            stops: [0.0,0.4],
                            tileMode: TileMode.clamp,
                          )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20,5,10,20),
                          child: Column
                          (
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: 
                            [
                              Text
                              ( 
                                st.locationName,
                                style: TextStyle
                                (
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: new Color.fromRGBO(245, 197, 41, 1),
                                ),
                              ),
                              Text
                              (
                                st.locationAddress,
                                style: TextStyle
                                  (
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Colors.white,
                                  ),
                              ),
                              Row
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
                              SingleChildScrollView
                              (
                                scrollDirection: Axis.horizontal,
                                child: Container(
                                  width: 680,
                                  child: Row(
                                    children: [
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
      ),
    );
  }
}