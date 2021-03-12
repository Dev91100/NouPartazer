import 'package:NouPartazer_App/Atish/Pages/NGOCentres/NGOCentres.dart';
import 'package:flutter/material.dart';

import 'package:NouPartazer_App/Atish/components/PageTitle.dart';
import 'package:NouPartazer_App/Atish/Pages/NGOCentres/NGOCentresList.dart';
import 'package:NouPartazer_App/Atish/components/IconRaisedButton.dart';
import 'package:NouPartazer_App/Atish/Pages/NGOCentres/NGOCentresModel.dart';

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
                  margin: EdgeInsets.only
                  (
                    right: 20,
                    bottom: 20,
                  ),
                  child: IconRaisedButton
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