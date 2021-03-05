import 'package:flutter/material.dart';

import 'package:NouPartazer_App/Atish/Pages/Story/Story.dart';
import 'package:NouPartazer_App/Atish/Pages/Story/StoryList.dart';
import 'package:NouPartazer_App/Atish/Components/IconText.dart';
import 'package:NouPartazer_App/Koomalai/src/Business%20Event%20Details/Business%20event%20details.dart';

class ListTileModel extends StatelessWidget 
{
  final List<Story> stories = storyList;

  @override
  Widget build(BuildContext context)
  {
    return ListView
    (
      shrinkWrap: true,
      padding: const EdgeInsets.only
      (
        top: 0
      ),

      children:
      stories.map((st)
      {
        return Card
        (
          margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
          elevation: 0,
          child: ListTile
          (
            leading: Container
            (
              margin: EdgeInsets.only
              (
                right: 10
              ),
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration
              (
                image: DecorationImage
                (
                  image: AssetImage(st.image),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(100.0),
              ),
            ),
            title: Row
            (
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:
              [
                Expanded
                (
                  child: Container
                  (
                    child: SingleChildScrollView
                    (
                      scrollDirection: Axis.horizontal,
                      child: Text
                      (
                        st.tag,
                        style: TextStyle
                        (
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                Row
                (
                  children:
                  [
                    Container
                    (
                      margin: EdgeInsets.only
                      (
                        left: 20,
                        right: 10
                      ),
                      child: Icon
                      (
                        Icons.fastfood,
                        color: Color.fromRGBO(255,84,62,1),
                      ),
                    ),
                    Container
                    (
                      child: Icon
                      (
                        Icons.no_food,
                        color: Color.fromRGBO(0,163,68,1),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            subtitle: Container
            (
              margin: EdgeInsets.only(),
              child: SingleChildScrollView
              (
                scrollDirection: Axis.horizontal,
                child: Row
                (
                  children:
                  [
                    IconText
                    (
                      text: st.date,
                      icon: Icons.event,
                      R: 0,
                      G: 50,
                      B: 193,
                      O: 1,
                    ),
                    
                    IconText
                    (
                      text: st.locationName,
                      icon: Icons.location_on_outlined,
                      R: 102,
                      G: 102,
                      B: 102,
                      O: 1,
                    ),
                  ],
                ),
              ),
            ),
            onTap: ()
            {
              Navigator.push
              (
                context,
                MaterialPageRoute
                (
                  builder: (context)
                  {
                      return BusinessEvent();
                  },
                ),
              );
            }
          ),
        );
      }).toList(),
    );
  }
}