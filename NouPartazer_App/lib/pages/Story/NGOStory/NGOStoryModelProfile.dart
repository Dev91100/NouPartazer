import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';

import 'package:noupartazer_app/Pages/Story/NGOStory/NGOStory.dart';
import 'package:noupartazer_app/Pages/Story/NGOStory/NGOStoryList.dart';

class NGOStoryModelProfile extends StatelessWidget
{
  final List<NGOStory> ngoStory = ngoStoryList;

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

              items: ngoStory.map((st)
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