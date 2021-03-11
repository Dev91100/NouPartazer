import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:NouPartazer_App/Atish/Pages/Story/NGOStory/NGOStory.dart';
import 'package:NouPartazer_App/Atish/Pages/Story/NGOStory/NGOStoryList.dart';
import 'package:NouPartazer_App/Atish/components/PageTitle.dart';
import 'package:NouPartazer_App/Atish/components/LongText.dart';
import 'package:NouPartazer_App/Atish/components/ContainerText.dart';

class NGOStoryModel extends StatefulWidget 
{
  @override
  _NGOStoryModelState createState() => _NGOStoryModelState();
}

class _NGOStoryModelState extends State<NGOStoryModel> {
  final List<NGOStory> ngoStory = ngoStoryList;

  @override
  Widget build(BuildContext context)
  {
    final screen = MediaQuery.of(context).size;

    return LayoutBuilder
    (
      builder: (ctx, constraints)
      {
        return Scaffold
        (
          backgroundColor: Color.fromRGBO(242, 242, 242, 1),
          appBar: PageTitle(text: 'STORIES'),
          body: ListView
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
                                    st.title,
                                    style: TextStyle
                                    (
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                      color: new Color.fromRGBO(245, 197, 41, 1),
                                    ),
                                  ),
                                ),
                              ),
                            
                              // Description
                              Container
                              (
                                constraints: BoxConstraints
                                (
                                  maxHeight: constraints.maxHeight * 0.12,
                                ),
                                child: LongText
                                (
                                  title: st.description,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  // textAlign: TextAlign.left,
                                  R: 255, G: 255, B: 255, O: 1,
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
        );
      }
    );
  }
}