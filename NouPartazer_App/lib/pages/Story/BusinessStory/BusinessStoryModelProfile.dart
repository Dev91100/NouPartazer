import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';

import 'package:noupartazer_app/Pages/Story/BusinessStory/BusinessStory.dart';
import 'package:noupartazer_app/Pages/Story/BusinessStory/BusinessStoryList.dart';

class BusinessStoryModelProfile extends StatelessWidget
{
  final List<BusinessStory> businessStory = businessStoryList;

  @override
  Widget build(BuildContext context)
  {
    return LayoutBuilder
    (
      builder: (ctx, constraints)
      {
        return ListView
        (
          shrinkWrap: true,
          padding: const EdgeInsets.only
          (
            top: 0
          ),
          // Prevents vertical scrolling
          physics: NeverScrollableScrollPhysics(),
          
          children:
          [
            // STORIES SLIDER
            CarouselSlider
            (
              options: CarouselOptions
              (
                disableCenter: true,
                height: 150,
                initialPage: 0,
                viewportFraction: 0.5,
                enableInfiniteScroll: true,
                enlargeCenterPage: true,
              ),

              items: businessStory.map((st)
              {
                return Card
                (
                  shape: RoundedRectangleBorder
                  (
                    borderRadius: BorderRadius.all(Radius.circular(20))
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
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      // boxShadow:
                      // [
                      //   BoxShadow
                      //   (
                      //     color: Colors.black.withOpacity(0.2),
                      //     spreadRadius: 2,
                      //     blurRadius: 2,
                      //     offset: Offset(0, 2), // changes position of shadow
                      //   )
                      // ],
                    ),
                  ),
                );
              }).toList(),
            )
          ],
        );
      }
    );
  }
}