import 'package:flutter/material.dart';

import 'package:noupartazer_app/Koomalai/src/Business%20Event%20Details/Business%20event%20details.dart';


class NGOCentresModel extends StatelessWidget
{
  final String profilePhoto;
  final String bannerPhoto;
  final String name;
  final String expertise;
  final int size;
  final String address;
  final String phone;
  final String website;
  final String description;

  NGOCentresModel
  (
    {
      this.profilePhoto,
      this.bannerPhoto,
      this.name,
      this.expertise,
      this.size,
      this.address,
      this.phone,
      this.website,
      this.description,
    }
  );

  @override
  Widget build(BuildContext context)
  {
    return Container
    (
      margin: EdgeInsets.only
      (
        left: 10,
        right: 10,
      ),
      child: Container
      (
        margin: EdgeInsets.only
        (
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
                      image: AssetImage(profilePhoto),
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
                                    name,
                                    style: TextStyle
                                    (
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
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
                            child: Text(description),
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
                  return BusinessEvent();
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
