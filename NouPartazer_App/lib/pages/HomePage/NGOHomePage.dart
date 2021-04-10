import 'package:flutter/material.dart';

import 'package:noupartazer_app/components/PageTitle.dart';
import 'package:noupartazer_app/Pages/Story/BusinessStory/BusinessStoryList.dart';
import 'package:noupartazer_app/Pages/Story/BusinessStory/BusinessStoryModel.dart';

class NGOHomePage extends StatelessWidget
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
          appBar: PageTitle(text: 'DONATIONS'),
          body: Container
          (
            child: BusinessStoryModel
            ( 
              businessStory: businessStoryList,
              constraints: constraints,
            ),
          ),
        );
      }
    );
  }
}

