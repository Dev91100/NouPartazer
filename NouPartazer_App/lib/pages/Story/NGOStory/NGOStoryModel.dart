import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';

import 'package:noupartazer_app/Pages/Story/NGOStory/NGOStory.dart';
import 'package:noupartazer_app/components/LongText.dart';
import 'package:noupartazer_app/components/ContainerText.dart';
import 'package:noupartazer_app/Global.dart';

class NGOStoryModel extends StatelessWidget
{
  final List<NGOStory> ngoStory;

  final BoxConstraints constraints;

  NGOStoryModel
  ({
    this.ngoStory,
    this.constraints
  });

  @override
  Widget build(BuildContext context)
  {
    final screen = MediaQuery.of(context).size;

    return ListView
    (
      // Prevents vertical scrolling
      physics: NeverScrollableScrollPhysics(),
      
      children:
      [
        // STORIES SLIDER
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

          items: ngoStory.map((st)
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
                          child: Text
                          ( 
                            st.title.toUpperCase(),
                            style: TextStyle
                            (
                              fontSize: Global().mediumText,
                              fontWeight: FontWeight.bold,
                              color: new Color.fromRGBO(245, 197, 41, 1),
                            ),
                          ),
                        ),
                      
                        // Description
                        Container
                        (
                          margin: EdgeInsets.only(top: Global().smallSpacing),
                          constraints: BoxConstraints
                          (
                            maxHeight: constraints.maxHeight * 0.12,
                          ),
                          child: LongText
                          (
                            text: st.description,
                            textColor: Color.fromRGBO(255, 255, 255, 1),
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
                                ContainerText
                                (
                                  text: st.tag,
                                  fontWeight: FontWeight.bold,
                                  borderColor: Color.fromRGBO(245, 197, 41, 1),
                                  borderWidth: 1,
                                  borderRadius: 40,
                                  boxColor: Color.fromRGBO(255, 248, 97, 0.2),
                                  padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                                  margin: EdgeInsets.only(right: Global().smallSpacing),
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
        )
      ],
    );
  }
}