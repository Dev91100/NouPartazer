import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';

import 'package:noupartazer_app/Atish/Pages/Story/BusinessStory/BusinessStory.dart';
import 'package:noupartazer_app/Atish/components/ContainerIconText.dart';
import 'package:noupartazer_app/Atish/components/ContainerText.dart';
import 'package:noupartazer_app/Atish/components/Text/MediumText.dart';
import 'package:noupartazer_app/Atish/components/Text/SmallText.dart';
import 'package:noupartazer_app/Devashish/Global.dart';

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
            pageSnapping: true,
            enableInfiniteScroll: false,
            enlargeCenterPage: false,
          ),

          items: businessStory.map((st)
          {
            return Card
            (
              elevation: 0,
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
                      begin: FractionalOffset(2.0, 0.95),
                      end: FractionalOffset(2.0, 0.0),
                      stops: [0.0,0.6],
                      tileMode: TileMode.clamp,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  // Location Name
                  child: Padding
                  (
                    padding: EdgeInsets.all(Global().smallPageMargin),
                    child: Column
                    (
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: 
                      [
                        SingleChildScrollView
                        (
                          scrollDirection: Axis.horizontal,
                          child: SmallText
                          (
                            text: st.locationName.toUpperCase(),
                            textColor: Color.fromRGBO(245, 197, 41, 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      
                        // Location Address
                        SingleChildScrollView
                        (
                          scrollDirection: Axis.horizontal,
                          child: Container
                          (
                            margin: EdgeInsets.only(top: Global().smallSpacing),
                            child: MediumText
                            (
                              text: st.locationAddress.toUpperCase(),
                              textColor: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        
                        // Date & Time
                        Container
                        (
                          margin: EdgeInsets.only(top: Global().smallSpacing),
                          child: Row
                          (
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: 
                            [
                              //Date
                              ContainerIconText
                              (
                                text: st.date,
                                fontWeight: FontWeight.bold,
                                icon: Icons.calendar_today_outlined,
                                iconSize: Global().tinyIcon,   //Override
                                iconColor: Colors.white,
                                boxColor: Colors.transparent,
                                borderColor: Colors.white,
                                borderWidth: 1,
                                margin: EdgeInsets.only(right: 15),
                              ),

                              //Time
                              ContainerIconText
                              (
                                text: st.time,
                                fontWeight: FontWeight.bold,
                                icon: Icons.query_builder_outlined,
                                iconSize: Global().tinyIcon,   //Override
                                iconColor: Colors.white,
                                boxColor: Colors.transparent,
                                borderColor: Colors.white,
                                borderWidth: 1,
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
                            margin: EdgeInsets.only(top: Global().smallSpacing),
                            child: Row
                            (
                              children: 
                              [
                                //Story Tag
                                ContainerText
                                (
                                  text: st.tag,
                                  fontWeight: FontWeight.bold,
                                  borderColor: Color.fromRGBO(245, 197, 41, 1),
                                  borderWidth: 1,
                                  borderRadius: 40,
                                  boxColor: Colors.transparent,
                                  padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                                  margin: EdgeInsets.only(right: 10),
                                ),

                                //Food Type 1
                                ContainerText
                                (
                                  text: st.foodType,
                                  fontWeight: FontWeight.bold,
                                  borderColor: Color.fromRGBO(245, 197, 41, 1),
                                  borderWidth: 1,
                                  borderRadius: 40,
                                  boxColor: Colors.transparent,
                                  padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                                  margin: EdgeInsets.only(right: 10),
                                ),
                                
                                //Food Type 2
                                ContainerText
                                (
                                  text: st.foodType,
                                  fontWeight: FontWeight.bold,
                                  borderColor: Color.fromRGBO(245, 197, 41, 1),
                                  borderWidth: 1.5,
                                  borderRadius: 40,
                                  boxColor: Colors.transparent,
                                  padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
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