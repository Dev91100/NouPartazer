import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/components/IconText.dart';


class DonationModel extends StatelessWidget
{
  final String image, tag, date, locationName;

  DonationModel
  (
    {
      this.image,
      this.tag,
      this.date,
      this.locationName
    }
  );

  @override
  Widget build(BuildContext context)
  {
    return Container
    (
      margin: EdgeInsets.only
      (
        // top: top,
        left: 10,
        right: 10,
      ),
      child: Container
      (
        margin: EdgeInsets.only
        (
          // top: 10,
          bottom: 5
        ),
        child: RaisedButton
        (
          elevation: 0,
          color: Colors.white,
          shape: RoundedRectangleBorder
          (
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),

          child: Padding
          (
            padding: const EdgeInsets.only
            (
              left: 0,
              right: 0,
              top: 10,
              bottom: 10,
            ),
            
            child: Row
            (
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:
              [
                Container
                (
                  margin: EdgeInsets.only
                  (
                    right: 10
                  ),
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration
                  (
                    image: DecorationImage
                    (
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(80.0),
                  ),
                ),

                Expanded
                (
                  child: Container
                  (
                    child: Column
                    (
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: 
                      [
                        Row
                        (
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:
                          [
                            Expanded
                            (
                              child: Container
                              (
                                padding: EdgeInsets.only(bottom: 5),
                                child: SingleChildScrollView
                                (
                                  scrollDirection: Axis.horizontal,
                                  child: Text
                                  (
                                    tag,
                                    style: TextStyle
                                    (
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Container
                            (
                              padding: EdgeInsets.only(bottom: 10),
                              child: Row
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
                                      color: Color.fromRGBO(255, 84, 62, 1),
                                      size: 18
                                    ),
                                  ),
                                  Container
                                  (  
                                    child: Icon
                                    (
                                      Icons.no_food,
                                      color: Color.fromRGBO(0, 163, 68, 1),
                                      size: 18
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container
                        (
                          width: double.infinity,
                          decoration: BoxDecoration
                          (
                            border: Border
                            (
                              bottom: BorderSide
                              (
                                color: Color.fromRGBO(102, 102, 102, 0.3),
                                width: 1,
                              ),
                            ),
                          ),
                          padding: EdgeInsets.only(bottom: 10),
                          child: SingleChildScrollView
                          (
                            scrollDirection: Axis.horizontal,
                            child: Row
                            (
                              children:
                              [
                                IconText
                                (
                                  text: date,
                                  icon: Icons.event,
                                  fontSize: 15,
                                  textColor: Color.fromRGBO(0, 50, 193, 1),
                                  iconColor: Color.fromRGBO(0, 50, 193, 1),
                                ),
                                
                                IconText
                                (
                                  text: locationName,
                                  icon: Icons.location_on_outlined,
                                  fontSize: 15,
                                  textColor: Color.fromRGBO(0, 0, 0, 1),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          onPressed: () 
          {
            Navigator.push
            (
              context,
              MaterialPageRoute
              (
                builder: (context)
                {
                  return ;
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
