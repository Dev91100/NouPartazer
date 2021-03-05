
import 'package:flutter/material.dart';

import 'package:NouPartazer_App/Atish/components/PageTitle.dart';
import 'package:NouPartazer_App/Atish/Pages/Story/Story.dart';
import 'package:NouPartazer_App/Atish/Pages/Story/StoryList.dart';
import 'package:NouPartazer_App/Atish/components/IconRaisedButton.dart';
import 'package:NouPartazer_App/Atish/Pages/Donation/DonationModel.dart';

class NGODonation extends StatelessWidget
{
  final List<Story> stories = storyList;

  @override
  Widget build(BuildContext context)
  {
    return LayoutBuilder
    (
      builder: (ctx, constraints)
      {
        return Scaffold
        (
          body: Column
          (
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children:
            [
              PageTitle
              (
                title: 'DONATIONS',
              ),

              Container
              (
                height: constraints.maxHeight * 0.06,
                width: constraints.maxWidth * 0.2,
                margin: EdgeInsets.only
                (
                  right: 20,
                  bottom: 20,
                ),
                child: IconRaisedButton
                (
                  text: stories.length.toString(),
                  icon: Icons.format_list_bulleted,
                )
              ),

              Container
              (
                height: constraints.maxHeight * 0.8,
                child: DonationModel(),
              ),
            ],
          )
        );
      }
    );
  }
}

