import 'package:flutter/material.dart';

import './Story.dart';
import './InfoTab.dart';
import './TagsTab.dart';

class StoryModel extends StatelessWidget
{
  int current = 0;
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
        height: 800,
        child: SingleChildScrollView
        (
          scrollDirection: Axis.horizontal,
          child: Row
          (
            children:
              stories.map((st) 
              {
                return Card
                (
                  margin: EdgeInsets.fromLTRB(30, 80, 30, 30),
                  child: Container
                  (
                    height: 700,
                    width: 350,
                    decoration: BoxDecoration
                    (
                      image: DecorationImage
                      (
                        image: AssetImage(st.image),
                        fit: BoxFit.cover,
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
                          SingleChildScrollView(
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
                    )
                  ),
                );
              }).toList(),
          ),
        ),
      ),
    );
  }
}