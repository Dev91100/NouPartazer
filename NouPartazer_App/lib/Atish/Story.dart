import 'package:flutter/foundation.dart';

class Story
{
  @required
  final String image;

  final String description, locationName, locationAddress, date, time, tag, foodType;

  Story
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