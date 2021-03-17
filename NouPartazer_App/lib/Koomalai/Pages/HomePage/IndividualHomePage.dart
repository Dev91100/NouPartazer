import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/components/PageTitle.dart';
import 'package:noupartazer_app/Atish/Pages/Story/NGOStory/NGOStoryList.dart';
import 'package:noupartazer_app/Atish/Pages/Story/NGOStory/NGOStoryModel.dart';

class IndividualHomePage extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return LayoutBuilder
    (
      builder: (ctx, constraints)
      {
        return Scaffold
        (
          appBar: PageTitle(text: 'STORIES'),
          body: Container
          (
            child: NGOStoryModel
            ( 
              ngoStory: ngoStoryList,
              constraints: constraints,
            ),
          ),
        );
      }
    );
  }
}

