import 'package:flutter/material.dart';

import 'package:NouPartazer_App/Atish/components/PageTitle.dart';
import 'package:NouPartazer_App/Atish/Pages/Story/BusinessStory/BusinessStory.dart';
import 'package:NouPartazer_App/Atish/Pages/Story/BusinessStory/BusinessStoryList.dart';
import 'package:NouPartazer_App/Atish/components/ButtonIcon.dart';
import 'package:NouPartazer_App/Atish/Pages/Donation/DonationModel.dart';

class NGODonation extends StatelessWidget
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
                    right: 20,
                    bottom: 20,
                  ),
                  child: ButtonIcon
                  (
                    text: stories.length.toString(),
                    icon: Icons.format_list_bulleted,
                  )
                ),

                Expanded
                (
                  child: ListView
                  (
                    padding: EdgeInsets.all(0),
                    children:
                    stories.map((st){
                      return DonationModel
                      (
                        image: st.image,
                        tag: st.tag,
                        date: st.date,
                        locationName: st.locationName,
                      );
                    }).toList(),
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

