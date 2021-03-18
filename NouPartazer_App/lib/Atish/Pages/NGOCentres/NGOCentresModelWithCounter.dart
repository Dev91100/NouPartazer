import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/components/PageTitle.dart';
import 'package:noupartazer_app/Atish/components/CustomIconButton.dart';
import 'package:noupartazer_app/Atish/Pages/NGOCentres/NGOCentresModel.dart';
import 'package:noupartazer_app/Atish/Pages/NGOCentres/NGOCentres.dart';
import 'package:noupartazer_app/Atish/Pages/NGOCentres/NGOCentresList.dart';

class NGOCentresModelWithCounter extends StatelessWidget
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
                  margin: EdgeInsets.only
                  (
                    right: 20,
                    bottom: 20,
                  ),
                  child: CustomIconButton
                  (
                    text: ngoCentres.length.toString(),
                    icon: Icons.format_list_bulleted,
                  )
                ),

                Expanded
                (
                  child: ListView
                  (
                    padding: EdgeInsets.all(0),
                    children:
                    ngoCentres.map((st)
                    {
                      return NGOCentresModel
                      (
                        profilePhoto: st.profilePhoto,
                        name: st.name,
                        description: st.description,
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