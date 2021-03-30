import 'package:flutter/foundation.dart';

class BusinessStory
{
  @required
  final String image;

  final String description, locationName, locationAddress, date, time, tag, foodType;

  BusinessStory
  ({
    this.image,
    this.description,
    this.locationName,
    this.locationAddress,
    this.date, this.time,
    this.tag,
    this.foodType
  });

}