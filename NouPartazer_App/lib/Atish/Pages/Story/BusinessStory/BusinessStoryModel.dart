import 'package:NouPartazer_App/Atish/Pages/Story/BusinessStory/BusinessStoryList.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:NouPartazer_App/Atish/Pages/Story/BusinessStory/BusinessStory.dart';
import 'package:NouPartazer_App/Atish/components/ContainerIconText.dart';
import 'package:NouPartazer_App/Atish/components/ContainerText.dart';

class BusinessStoryModel extends StatelessWidget
{
  final List<BusinessStory> businessStory;

  final BoxConstraints constraints;

  BusinessStoryModel
  ({
    this.businessStory,
    this.constraints
  });

  @override
  Widget build(BuildContext context)
  {
    final screen = MediaQuery.of(context).size;

    return ListView
    (
      children: 
      [
        CarouselSlider
        (
          options: CarouselOptions
          (
            height: screen.height * 0.77,
            initialPage: 0,
            viewportFraction: 0.92,
            enableInfiniteScroll: false,
            enlargeCenterPage: false,
          ),

          items: businessStory.map((st)
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
                        SingleChildScrollView
                        (
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
                      
                        // Location Address
                        SingleChildScrollView
                        (
                          scrollDirection: Axis.horizontal,
                          child: Container
                          (
                            margin: EdgeInsets.only(top: 10),
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
                        ),
                
                        // Date & Time
                        FittedBox
                        (
                          fit: BoxFit.contain,
                          child: Container
                          (
                            margin: EdgeInsets.only(top: 10),
                            child: Row
                            (
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: 
                              [
                                ContainerIconText
                                (
                                  text: st.date,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  icon: Icons.calendar_today_outlined,
                                  iconSize: 20,
                                  IconR: 245, IconG: 197, IconB: 41, IconO: 1,
                                  BorderR: 245, BorderG: 197, BorderB: 41, BorderO: 1,
                                  borderWidth: 1.5,
                                  BoxR: 255, BoxG: 248, BoxB: 97, BoxO: 0.2,
                                  mRight: 15,
                                ),

                                ContainerIconText
                                (
                                  text: st.time,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  icon: Icons.query_builder_outlined,
                                  iconSize: 20,
                                  IconR: 245, IconG: 197, IconB: 41, IconO: 1,
                                  BorderR: 245, BorderG: 197, BorderB: 41, BorderO: 1,
                                  borderWidth: 1.5,
                                  BoxR: 255, BoxG: 248, BoxB: 97, BoxO: 0.2,
                                ),
                              ],
                            ),
                          ),
                        ),

                        // Tags
                        SingleChildScrollView
                        (
                          scrollDirection: Axis.horizontal,
                          child: Container
                          (
                            margin: EdgeInsets.only(top: 15),
                            child: Row
                            (
                              children: 
                              [
                                ContainerText
                                (
                                  text: st.tag,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  BorderR: 245, BorderG: 197, BorderB: 41, BorderO: 1,
                                  borderWidth: 1.5,
                                  borderRadius: 40,
                                  BoxR: 255, BoxG: 248, BoxB: 97, BoxO: 0.2,
                                  pLeft: 15, pTop:10, pRight: 15, pBottom: 10,
                                  mRight: 10,
                                ),

                                ContainerText
                                (
                                  text: st.foodType,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  BorderR: 245, BorderG: 197, BorderB: 41, BorderO: 1,
                                  borderWidth: 1.5,
                                  borderRadius: 40,
                                  BoxR: 255, BoxG: 248, BoxB: 97, BoxO: 0.2,
                                  pLeft: 15, pTop:10, pRight: 15, pBottom: 10,
                                  mRight: 10,
                                ),
                                
                                ContainerText
                                (
                                  text: st.foodType,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  BorderR: 245, BorderG: 197, BorderB: 41, BorderO: 1,
                                  borderWidth: 1.5,
                                  borderRadius: 40,
                                  BoxR: 255, BoxG: 248, BoxB: 97, BoxO: 0.2,
                                  pLeft: 15, pTop:10, pRight: 15, pBottom: 10,
                                ),
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
        ),
      ],
    );
  }
}