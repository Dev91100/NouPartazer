import 'package:flutter/material.dart';

import 'package:noupartazer_app/Global.dart';
import 'package:noupartazer_app/components/Buttons/CustomIconButton.dart';
import 'package:noupartazer_app/components/PageTitle.dart';
import 'package:noupartazer_app/Pages/Story/BusinessStory/BusinessStory.dart';
import 'package:noupartazer_app/Pages/Story/BusinessStory/BusinessStoryList.dart';
import 'package:noupartazer_app/Pages/DonationAndNGOCentresList/DonationModel.dart';

class Donation extends StatelessWidget
{
  final List<BusinessStory> stories = businessStoryList;

  @override
  Widget build(BuildContext context)
  {
    return LayoutBuilder
    (
      builder: (ctx, constraints)
      {
        return Scaffold
        (
          appBar: PageTitle(text: 'DONATIONS'),
          body: Container
          (
            
            child: Column
            (
              // Makes column fit the size of its children
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children:
              [
                Container
                (
                  margin: EdgeInsets.only
                  (
                    right: Global().smallPageMargin,
                    bottom: Global().smallSpacing,
                  ),
                  child: CustomIconButton
                  (
                    text: stories.length.toString(),
                    icon: Icons.format_list_bulleted,
                  )
                ),

                Expanded
                (
                  child: ListView.builder
                  (
                    itemCount: businessStoryList.length,
                    shrinkWrap: true,
                    padding: EdgeInsets.all(0),
                    itemBuilder: (BuildContext context, int index)
                    {
                      return DonationModel
                      (
                        image: businessStoryList[index].image,
                        tag: businessStoryList[index].tag,
                        date: businessStoryList[index].date,
                        locationName: businessStoryList[index].locationName,
                      );
                    }
                  ),
                ),
              ],
            ),
          )
        );
      }
    );
  }
}

