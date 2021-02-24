import 'package:flutter/material.dart';

import './Story.dart';

class StoryModel extends StatelessWidget
{
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
    
  ];

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 800,
      child: SingleChildScrollView
      (
        child: Column
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
                            color: Colors.yellow,
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
                            Text
                            (
                              st.date,
                              style: TextStyle
                                (
                                  fontWeight: FontWeight.normal,
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                            ),
                            Text
                            (
                              st.time,
                              style: TextStyle
                              (
                                fontWeight: FontWeight.normal,
                                fontSize: 25,
                                color: Colors.white,
                              )
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text
                            (
                              st.tag,
                              style: TextStyle
                              (
                                fontWeight: FontWeight.normal,
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                            Text
                            (
                              st.foodType,
                              style: TextStyle
                              (
                                fontWeight: FontWeight.normal,
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ),
              );
            }).toList(),
        ),
      ),
    );
  }
}