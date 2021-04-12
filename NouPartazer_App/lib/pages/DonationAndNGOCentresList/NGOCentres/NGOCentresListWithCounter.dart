import 'package:flutter/material.dart';

import 'package:noupartazer_app/Global.dart';
import 'package:noupartazer_app/components/PageTitle.dart';
import 'package:noupartazer_app/components/Buttons/CustomIconButton.dart';
import 'package:noupartazer_app/Pages/DonationAndNGOCentresList/NGOCentres/NGOCentresModel.dart';
import 'package:noupartazer_app/Pages/DonationAndNGOCentresList/NGOCentres/NGOCentres.dart';
import 'package:noupartazer_app/Pages/DonationAndNGOCentresList/NGOCentres/NGOCentresList.dart';

class NGOCentresListWithCounter extends StatelessWidget
{
  final List<NGOCentres> ngoCentres = ngoCentresList;

  @override
  Widget build(BuildContext context)
  {
    return LayoutBuilder
    (
      builder: (ctx, constraints)
      {
        return Scaffold
        (
          appBar: PageTitle(text: 'NGO LIST'),
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
                  margin: EdgeInsets.symmetric
                  (
                    horizontal: Global().smallPageMargin
                  ),
                  child: CustomIconButton
                  (
                    text: ngoCentres.length.toString(),
                    icon: Icons.format_list_bulleted,
                  )
                ),

                Expanded
                (
                  child: ListView.builder
                  (
                    itemCount: ngoCentresList.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index)
                    {
                      return NGOCentresModel
                      (
                        profilePhoto: ngoCentresList[index].profilePhoto,
                        name: ngoCentresList[index].name,
                        description: ngoCentresList[index].description,
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